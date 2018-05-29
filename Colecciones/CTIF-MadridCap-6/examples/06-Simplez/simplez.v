//------------------------------------------------------------------------------
//-- Procesador SIMPLEZ F:   Implementacion del procesador SIMPLEZ de Gregorio //-- Fernandez en FPGA, mediante lenguaje Verilog
//------------------------------------------------------------------------------
//-- (C) 2015-2017, Juan Gonzalez-Gomez (Obijuan)
//-----------------------------------------------------------------------------
//-- Released under the LGPL v3 License
//------------------------------------------------------------------------------
`default_nettype none
`include "divider.vh"
`include "baudgen.vh"

//-- Procesador Simplez
module simplez  #(
           parameter BAUD = `B115200,        //-- Velocidad de comunicacion de la pantalla / Teclado
           parameter WAIT_DELAY = `T_200ms,  //-- Tiempo de espera para la instruccion WAIT (Debug)
           parameter ROMFILE = "",  //-- Fichero con el contenido de la RAM a cargar
           parameter DEBUG_LEDS = 0          //-- Uso de los leds para depuracion
)(
           input wire clk,          //-- Reloj del sistema
           input wire rstn_ini,     //-- Reset
           output wire [7:0] leds,  //-- leds
           output wire stop,        //-- Indicador de stop
           output wire tx,          //-- Salida serie para la pantalla
           input wire rx            //-- Entrada serie del teclado
);


//-- Direcciones para los perifericos
localparam LEDS_ADR = 9'd507;
localparam PANTALLA_STATUS_ADR = 9'd508;  //-- Pantalla: Unidad de transmision serie
localparam PANTALLA_DATA_ADR = 9'd509;
localparam TECLADO_STATUS_ADR = 9'd510;   //-- Teclado: Unidad de recepcion serie
localparam TECLADO_DATA_ADR = 9'd511;


//-- Codigos de operacion de las instrucciones de simplez
localparam ST   = 3'o0;  //-- OK
localparam LD   = 3'o1;  //-- OK
localparam ADD  = 3'o2;  //-- OK
localparam BR   = 3'o3;  //-- OK
localparam BZ   = 3'o4;  //-- OK
localparam CLR  = 3'o5;  //-- OK
localparam DEC  = 3'o6;  //-- OK
localparam HALT = 3'o7;  //-- OK

//-- Codigos de operacion extendidos
localparam HALTE = 4'hE; //-- Halt extended
localparam WAIT = 4'hF;  //-- Wait

//-- Tamano de la memoria RAM a instanciar
localparam AW = 9;     //-- Anchura del bus de direcciones
localparam DW = 12;     //-- Anchura del bus de datos

//-- Instanciar la memoria RAM
wire [DW-1: 0] mem_dout;
wire [AW-1: 0] addr;
wire ram_cs ;             //-- Chip select global para la ram
wire ram_inst_cs;         //-- Chip select para lectura de instrucciones en RAM
wire ram_data_cs;         //-- Chip select para el acceso a datos en RAM

//-- Chip select para el acceso a instrucciones
assign ram_inst_cs = (state == INIT) ? 1 : 0;

//-- Chip select global de la RAM
assign ram_cs = ram_inst_cs | ram_data_cs;

genram #(
        .ROMFILE(ROMFILE),
        .AW(AW),
        .DW(DW))
  ROM (
        .clk(clk),
        .cs(ram_cs),
        .rw(rw),
        .addr(addr),
        .data_out(mem_dout),
        .data_in(reg_a)
      );

//-- Registrar la senal de reset
reg rstn = 0;

always @(posedge clk)
  rstn <= rstn_ini;

  //-- Declaracion de las microordenes
  reg cp_inc = 0;   //-- Incrementar contador de programa
  reg cp_load = 0;  //-- Cargar el contador de programa
  reg cp_sel = 0;   //-- Seleccion de la direccion del contador de programa
  reg ri_load = 0;  //-- Cargar el registro de instruccion
  reg halt = 0;     //-- Instruccion halt ejecutada
  reg a_load = 0;   //-- Cargar el acumulador
  reg rw = 1;       //-- Lectura / escritura en RAM
  reg timer_ena = 0;   //-- Habilitacion del temporizador

  //-- Microordenes para la ALU
  reg alu_op2 = 0;  //-- Sacar el operando 2 por la salida (sin modificar)
  reg alu_clr = 0;  //-- Sacar un 0 por la salida
  reg alu_add = 0;  //-- Sumar al acumulador el operando 2
  reg alu_dec = 0;  //-- Decrementar operando 1 en una unidad

  //-- Contador de programa
  reg [AW-1: 0] cp = 0;

  always @(posedge clk)
    if (!rstn)
      cp <= 0;
    else if (cp_load)
      cp <= CD;
    else if (cp_inc)
      cp <= cp + 1;


  //-- Multiplexor de acceso a la direccion de memoria
  //-- cp_sel = 1 ---> Se direcciona la memoria desde el CP
  //-- cp_sel = 0 ---> Se direcciona la memoria desde el CD del RI
  assign addr = (cp_sel) ? cp : CD;


  //-- Registro de instruccion
  reg [DW-1: 0] ri = 0;

  //-- Descomponer la instruccion en los campos CO y CD
  wire [2:0] CO = ri[11:9];  //-- Codigo de operacion
  wire [8:0] CD = ri[8:0];   //-- Campo de direccion
  wire [3:0] COE = ri[11:8]; //-- Código de operacion extendido

  always @(posedge clk)
    if (!rstn)
      ri <= 0;
    else if (ri_load)
      ri <= mem_dout;

//-- Registro de stop
//-- Se pone a 1 cuando se ha ejecutado una instruccion de HALT
reg reg_stop = 0;

always @(posedge clk)
  if (!rstn)
    reg_stop <= 0;
  else if (halt)
    reg_stop <= 1;

//-- Registro acumulador
reg [DW-1: 0] reg_a = 0;

always @(posedge clk)
  if (!rstn)
    reg_a <= 0;
  else if (a_load)
    reg_a <= alu_out;


//-- Debug: Acceso a los leds
//-- Si DEBUG_LEDS, se saca directamente los 4 bits menos sig del registro A
//-- En caso contrario los leds estan mapeados y se accede a ellos como a cualquier
//-- otro periferico
assign leds = (DEBUG_LEDS == 1) ? reg_a[7:0] : leds_data;

//-- Debug: 8 bits menos significativos del registro A conectados a los leds rojos
//assign leds = reg_a[7:0];

//-- Debug: Sacar senal de stop por el led verde de la icestick
assign stop = reg_stop;


//----- ALU ----
reg [DW-1: 0] alu_out = 0;
reg flag_z = 0;


always @(*) begin

  //-- Operacion: transferencia del operando 2 a la salida
  if (alu_op2)
    alu_out = alu_in;

  //-- Sacar el valor 0
  else if (alu_clr)
    alu_out = 0;

  //-- Suma de operador 1 + operador 2
  else if (alu_add)
    alu_out = reg_a + alu_in;

  else if (alu_dec)
    alu_out = reg_a - 1;

  //-- Evitar latches
  else
    alu_out = 1;
end

  //-- Captura del flag de z
  //-- Se captura con la misma senal de carga del registro A
  always @(posedge clk)
    if (!rstn)
      flag_z <= 0;
    else if (a_load)
      if (alu_out == 0)
        flag_z <= 1;
      else
        flag_z <= 0;

//-- Multiplexor de acceso al bus de datos DATA_OUT
//-- Donde tanto la memoria como los perifericos depositan sus datos
wire [DW-1: 0] alu_in;

assign alu_in = (ram_cs == 1)           ? mem_dout :
                (pant_status_cs == 1)   ? {4'b0, pant_status} :
                (tecl_data_cs == 1)     ? {4'b0, tecl_data}   :
                (tecl_status_cs == 1)   ? {4'b0, tecl_status} : 12'b0;

//----------- PERIFERICOS --------
//-- Divisor para marcar la duracion de cada estado del automata
wire clk_tic;

dividerp1 #(WAIT_DELAY)
  TIMER0 (
    .clk(clk),
    .clk_out(clk_tic),
    .timer_ena(timer_ena)
  );

//-- Chip select para la pantalla de simplez
wire pant_data_cs;
wire pant_status_cs;

//-- Otros cables para la pantalla
wire tx_ready;
reg [7:0] pant_status = 0;

//-- Chip select para el teclado de simplez
wire tecl_data_cs;
reg [7:0] tecl_data = 0;
wire tecl_status_cs;
reg [7:0] tecl_status = 0;
wire [7:0] rxdata;
wire rxrcv;
reg rcv_flag = 0;

//-- Chip select para el registro de LEDs
wire leds_cs = (CD == LEDS_ADR) ? 1 : 0;


//-- Logica de activacion del chip select de la memoria
//-- Direcciones desde 0 - 1F7  son de RAM
//-- Desde 1F8 a 1FF son para perifericos
assign ram_data_cs = (CD < 9'h1F8) ? 1 : 0;
assign pant_data_cs = (CD == PANTALLA_DATA_ADR) ? 1 : 0;
assign pant_status_cs = (CD == PANTALLA_STATUS_ADR) ? 1 : 0;
assign tecl_data_cs = (CD == TECLADO_DATA_ADR) ? 1 : 0;
assign tecl_status_cs = (CD == TECLADO_STATUS_ADR) ? 1: 0;

//-- Registro de status de la pantalla
always @(posedge clk)
  if (!rstn)
    pant_status <= 8'b0;
  else if (pant_status_cs)
    pant_status <= {7'b0, tx_ready};

//-- Registro de datos del teclado
always @(posedge clk)
  if (!rstn)
    tecl_data <= 8'b0;
  else if (tecl_data_cs)
    tecl_data <= rxdata;

//-- Registro de estado del teclado
always @(posedge clk)
  if (!rstn)
    tecl_status <= 8'b0;
  else if (tecl_status_cs)
    tecl_status <= {7'b0, rcv_flag};

//-- Capturar el flag de dato recibido
always @(posedge clk)
  if (!rstn)
    rcv_flag <= 0;
  else if (rxrcv)
    rcv_flag <= 1;         //-- Al recibir un dato se pone a 1 el flag
  else if (tecl_data_cs)   //-- Al leer reg datos el flag se pone a 0
    rcv_flag <= 0;


//-- Instanciar la Unidad de transmision
uart_tx #(.BAUDRATE(BAUD))
  TX0 (
    .clk(clk),
    .rstn(rstn),
    .data(reg_a[7:0]),
    .start(pant_data_cs),
    .ready(tx_ready),
    .tx(tx)
  );

//-- Instanciar la Unidad de recepcion
uart_rx #(BAUD)
  RX0 (.clk(clk),      //-- Reloj del sistema
       .rstn(rstn),    //-- Señal de reset
       .rx(rx),        //-- Linea de recepción de datos serie
       .rcv(rxrcv),      //-- Señal de dato recibido
       .data(rxdata)     //-- Datos recibidos
      );

//-- Puerto de leds
reg [7:0] leds_data = 0;

always @(posedge clk)
  if (!rstn)
    leds_data <= 0;
  else if (leds_cs)
    leds_data <= reg_a[7:0];

//-------------------- UNIDAD DE CONTROL
localparam INIT = 0;
localparam FETCH = 1;
localparam EXEC1 = 2;
localparam EXEC2 = 3;
localparam END = 4;

//-- Estado del automata
reg [2:0] state = 0;
reg [2:0] next_state = 0;

//-- Transiciones de estados

always @(posedge clk)
  if (!rstn)
    state <= INIT;
  else
    state <= next_state;

//-- Generacion de microordenes
//-- y siguientes estados
always @(*) begin

  //-- Valores por defecto
  next_state = state;      //-- Por defecto permanecer en el mismo estado
  cp_inc = 0;
  cp_load = 0;
  cp_sel = 1;
  ri_load = 0;
  halt = 0;
  a_load = 0;
  rw = 1;
  alu_op2 = 0;
  alu_add = 0;
  alu_clr = 0;
  alu_dec = 0;
  timer_ena = 0;

  case(state)
    //-- Estado inicial
    INIT:
      if (!rstn)
        next_state = INIT;
      else
        next_state = FETCH;


    FETCH: begin
      next_state = EXEC1;
      ri_load = 1;
    end

    EXEC1: begin
      case (CO)

        ST: begin
          rw = 0;  //-- Memoria en modo escritura
          cp_sel = 0;
          next_state = END;
        end

        BR: begin
          cp_load = 1;
          next_state = INIT;
        end

        BZ: begin
          if (flag_z) begin
            cp_load = 1;
            next_state = INIT;
          end
          else
            next_state = END;

        end

        LD: begin
          cp_sel = 0;
          next_state = EXEC2;
        end

        ADD: begin
          cp_sel = 0;
          next_state = EXEC2;
        end

        CLR: begin
          a_load = 1;
          alu_clr = 1;
          next_state = END;
        end

        DEC: begin
          a_load = 1;
          alu_dec = 1;
          next_state = END;
        end

        //-- Procesar codigos de operacion extendidos
        HALT: begin

          //-- Instrucciones extendidas
          case (COE)

            //-- Instruccion HALT de simplez
            HALTE: begin
              halt = 1;
              next_state = EXEC1;  //-- Permanecer en el mismo estado... para siempre...
            end

            //-- Instruccion WAIT de microbio
            WAIT: begin
                //-- Reiniciar temporizador
                timer_ena = 1;
                next_state = EXEC2;
            end

            default:
              next_state = INIT;

          endcase

        end

      endcase
    end

    EXEC2: begin
      case (CO)
        LD: begin
          a_load = 1;
          alu_op2 = 1;
          next_state = END;
        end

        ADD: begin
          a_load = 1;
          alu_add = 1;
          next_state = END;
        end

        //-- Procesar codigos de operacion extendidos
        HALT: begin

          //-- Instrucciones extendidas
          case (COE)

            //-- Instruccion WAIT de microbio
            WAIT: begin
                //-- Mientras no se active clk_tic, se sigue en el mismo
                //-- estado de ejecucion
                timer_ena = 1;
                if (clk_tic) next_state = END;
                else next_state = EXEC2;
            end

            default:
              next_state = INIT;

          endcase

        end

        default:
          next_state = INIT;


      endcase
    end

    END: begin
      next_state = INIT;
      cp_inc = 1;
    end

  endcase
end

endmodule
