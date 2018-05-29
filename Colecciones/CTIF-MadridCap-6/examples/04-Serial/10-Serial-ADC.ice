{
  "version": "1.2",
  "package": {
    "name": "",
    "version": "",
    "description": "",
    "author": "",
    "image": ""
  },
  "design": {
    "board": "icezum",
    "graph": {
      "blocks": [
        {
          "id": "043d1033-38ed-4be3-93c7-30d06a75d6b2",
          "type": "basic.output",
          "data": {
            "name": "Serial",
            "pins": [
              {
                "index": "0",
                "name": "TX",
                "value": "8"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 736,
            "y": 144
          }
        },
        {
          "id": "ae923bfe-b2c3-4a4d-a375-b8360f41077f",
          "type": "basic.output",
          "data": {
            "name": "LED",
            "range": "[7:0]",
            "pins": [
              {
                "index": "7",
                "name": "LED7",
                "value": "104"
              },
              {
                "index": "6",
                "name": "LED6",
                "value": "102"
              },
              {
                "index": "5",
                "name": "LED5",
                "value": "101"
              },
              {
                "index": "4",
                "name": "LED4",
                "value": "99"
              },
              {
                "index": "3",
                "name": "LED3",
                "value": "98"
              },
              {
                "index": "2",
                "name": "LED2",
                "value": "97"
              },
              {
                "index": "1",
                "name": "LED1",
                "value": "96"
              },
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 728,
            "y": 224
          }
        },
        {
          "id": "c01e3c2e-a8c9-4cee-8f23-edf6ae72eefc",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SDA",
                "value": "90"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 120,
            "y": 288
          }
        },
        {
          "id": "6fd10017-3f89-49d8-b08d-4303520d1f54",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "ADC_SCL",
                "value": "91"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 464,
            "y": 312
          }
        },
        {
          "id": "a8de7041-3775-4fbc-960d-fd95fd7c00f7",
          "type": "4ee1dccf70221f76aa816ed03dfca82dfea13730",
          "position": {
            "x": 560,
            "y": 104
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "30afd86c-9bd5-4952-953a-e49a5876c149",
          "type": "3ef04116e82fa21433e35100e073150a62372d72",
          "position": {
            "x": 312,
            "y": 272
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "c2d0010e-39fa-4bd5-84ab-0733fa9271e6",
          "type": "9145319126ac1b81ea15f1e8187601adec774394",
          "position": {
            "x": 120,
            "y": 368
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "843b2e5a-1ef4-40f0-aa40-f0fbad5d1bad",
          "type": "4ad9edf034ff368c7fec5a75bb0952c46e455a22",
          "position": {
            "x": 104,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "b3c61e16-5b64-4d68-94ff-5aa95d53780a",
          "type": "5d04f25ec079a6f3d1c41fd6c1d3ea09467ae59b",
          "position": {
            "x": 304,
            "y": 120
          },
          "size": {
            "width": 96,
            "height": 64
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "30afd86c-9bd5-4952-953a-e49a5876c149",
            "port": "91f10cfc-fafb-47c1-88ee-127b10bca7bf"
          },
          "target": {
            "block": "a8de7041-3775-4fbc-960d-fd95fd7c00f7",
            "port": "dc314b22-353f-4a77-a835-7fa80424a2fd"
          },
          "vertices": [
            {
              "x": 496,
              "y": 240
            }
          ],
          "size": 8
        },
        {
          "source": {
            "block": "a8de7041-3775-4fbc-960d-fd95fd7c00f7",
            "port": "e6c2da7b-a669-4a51-bf9c-72f0c912467d"
          },
          "target": {
            "block": "043d1033-38ed-4be3-93c7-30d06a75d6b2",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "30afd86c-9bd5-4952-953a-e49a5876c149",
            "port": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5"
          },
          "target": {
            "block": "6fd10017-3f89-49d8-b08d-4303520d1f54",
            "port": "in"
          }
        },
        {
          "source": {
            "block": "c01e3c2e-a8c9-4cee-8f23-edf6ae72eefc",
            "port": "out"
          },
          "target": {
            "block": "30afd86c-9bd5-4952-953a-e49a5876c149",
            "port": "cedb3583-19c2-429e-a3e4-7e71f72b1e73"
          }
        },
        {
          "source": {
            "block": "c2d0010e-39fa-4bd5-84ab-0733fa9271e6",
            "port": "95281825-5850-408d-9040-93866452f146"
          },
          "target": {
            "block": "30afd86c-9bd5-4952-953a-e49a5876c149",
            "port": "fbf9ec95-d00e-4bae-8016-bf9044ad4b3c"
          }
        },
        {
          "source": {
            "block": "30afd86c-9bd5-4952-953a-e49a5876c149",
            "port": "91f10cfc-fafb-47c1-88ee-127b10bca7bf"
          },
          "target": {
            "block": "ae923bfe-b2c3-4a4d-a375-b8360f41077f",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "b3c61e16-5b64-4d68-94ff-5aa95d53780a",
            "port": "e1385e4a-78a0-4557-b2cf-f63469bab3a4"
          },
          "target": {
            "block": "a8de7041-3775-4fbc-960d-fd95fd7c00f7",
            "port": "c4bb4e9d-2689-4d04-9220-9b0baa42b3a6"
          }
        }
      ]
    }
  },
  "dependencies": {
    "4ee1dccf70221f76aa816ed03dfca82dfea13730": {
      "package": {
        "name": "Serial_TX_115200",
        "version": "0.1",
        "description": "Transmisor serie a 115200 baudios",
        "author": "Juan Gonzalez-Gomez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22102.991%22%20height=%2276.959%22%20viewBox=%220%200%2096.554068%2072.14963%22%3E%3Cpath%20d=%22M74.06%2019.646l.167%2019.068%2021.39-19.731V1.24z%22%20fill=%22#ececec%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M1.103%2019.84L29.291.937l65.994.332-20.892%2018.903%22%20fill=%22#e6e6e6%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20y=%2269.396%22%20x=%227.234%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2243.386%22%20y=%2297.246%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%226.341%22%20y=%2255.998%22%20font-weight=%22400%22%20font-size=%2216.326%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%226.341%22%20y=%2255.998%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESerial%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2211.662%22%20y=%2271.91%22%20font-weight=%22400%22%20font-size=%2216.89%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2211.662%22%20y=%2271.91%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E115200%3C/tspan%3E%3C/text%3E%3Crect%20width=%2273.621%22%20height=%2219.234%22%20x=%22.938%22%20y=%2219.978%22%20ry=%221.858%22%20fill=%22#e6e6e6%22%20stroke=%22#000%22%20stroke-width=%221.875%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2210.389%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2219.674%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22#faa%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2261.883%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22green%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ccircle%20cx=%2229.617%22%20cy=%2229.429%22%20r=%223.15%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2263.107%22%20y=%2255.725%22%20font-weight=%22400%22%20font-size=%2216.326%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%2263.107%22%20y=%2255.725%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ETX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": -104,
                "y": 8
              }
            },
            {
              "id": "de9df409-6820-4027-adef-95a601340d2b",
              "type": "basic.output",
              "data": {
                "name": "rdy"
              },
              "position": {
                "x": 1464,
                "y": 160
              }
            },
            {
              "id": "c4bb4e9d-2689-4d04-9220-9b0baa42b3a6",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -104,
                "y": 248
              }
            },
            {
              "id": "e6c2da7b-a669-4a51-bf9c-72f0c912467d",
              "type": "basic.output",
              "data": {
                "name": "TX"
              },
              "position": {
                "x": 1456,
                "y": 504
              }
            },
            {
              "id": "dc314b22-353f-4a77-a835-7fa80424a2fd",
              "type": "basic.input",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": -112,
                "y": 552
              }
            },
            {
              "id": "d9ee5bc8-98e7-4d82-9e50-4eaa954edd78",
              "type": "2393067d102d16e1ec56845b622db53a04bf9321",
              "position": {
                "x": 480,
                "y": 504
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "c2229c0e-2f0c-486b-ad04-204da132234a",
              "type": "b734f60cce5a9de8621cbbd63cf95b689e40512c",
              "position": {
                "x": 688,
                "y": 640
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e5ff03e9-10d0-43c5-b5a7-3cb810ec621c",
              "type": "b8d6b212e2da99bfda91117e9facfbd339b49fa1",
              "position": {
                "x": 688,
                "y": 536
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "85f06c28-db36-4d63-b759-b9685365a86e",
              "type": "fec7ff39e4c71bcdf0ca03690e64aab18405ad25",
              "position": {
                "x": 480,
                "y": 616
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e1be7d79-c5f9-4eb5-ae5d-1bc24bc644ed",
              "type": "b734f60cce5a9de8621cbbd63cf95b689e40512c",
              "position": {
                "x": 480,
                "y": 688
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "626f4ee9-ce8a-4448-b447-2329e5f281bc",
              "type": "b4ce62fd32a27565a2cc8fbbd56277aab1018a3c",
              "position": {
                "x": 472,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
              "type": "3c8460fd3d53757d2614ea6538f84e4611739d26",
              "position": {
                "x": 928,
                "y": 472
              },
              "size": {
                "width": 96,
                "height": 160
              }
            },
            {
              "id": "50868ddc-496f-4d14-87f3-9348244883b8",
              "type": "5d56f16d3f855d65c6efb53721204b2bf0dc5489",
              "position": {
                "x": 1288,
                "y": 504
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "28373a4a-ad01-4c13-b41f-53805091a137",
              "type": "basic.info",
              "data": {
                "info": "TRANSMISOR SERIE A 115200 BAUDIOS",
                "readonly": true
              },
              "position": {
                "x": -88,
                "y": -192
              },
              "size": {
                "width": 288,
                "height": 32
              }
            },
            {
              "id": "21e8d038-db6d-4b82-ba3b-3f88b1fd7c05",
              "type": "basic.info",
              "data": {
                "info": "Señal de comienzo de transmisión\nstart = 1 : Se envía el carácter que llega por data\nSOLO se realiza el envío si el transmisor está listo\n(que se indica con la señal rdy = 1)",
                "readonly": true
              },
              "position": {
                "x": -184,
                "y": 312
              },
              "size": {
                "width": 416,
                "height": 80
              }
            },
            {
              "id": "1fb4301c-ada9-470c-ad62-1d1ef28c72d6",
              "type": "basic.info",
              "data": {
                "info": "Dato de 8 bits a transmitir",
                "readonly": true
              },
              "position": {
                "x": -176,
                "y": 520
              },
              "size": {
                "width": 240,
                "height": 32
              }
            },
            {
              "id": "2c178a4a-ee6d-4f1a-a542-009f1b7e8648",
              "type": "basic.info",
              "data": {
                "info": "Generador de Baudios\nSe generan 115200 pulsos\npor segundo",
                "readonly": true
              },
              "position": {
                "x": 456,
                "y": 240
              },
              "size": {
                "width": 208,
                "height": 64
              }
            },
            {
              "id": "95df1273-e931-4a0d-8159-b2ca948314cc",
              "type": "basic.info",
              "data": {
                "info": "Controlador de transmision\nActiva las microórdenes (señales de control)\nen cada momento\nEs una máquina de estados (Autómata)",
                "readonly": true
              },
              "position": {
                "x": 64,
                "y": 64
              },
              "size": {
                "width": 352,
                "height": 80
              }
            },
            {
              "id": "8cef1bd0-506d-480d-b629-96dec9c7f376",
              "type": "basic.info",
              "data": {
                "info": "Registro de datos\nAlmacena el dato a transmitir\n(de 8 bits)",
                "readonly": true
              },
              "position": {
                "x": 480,
                "y": 432
              },
              "size": {
                "width": 272,
                "height": 80
              }
            },
            {
              "id": "9adc6232-a32e-46d7-a251-5906e737c1ff",
              "type": "basic.info",
              "data": {
                "info": "Registro de desplazamiento de 10 bits\nEs el que convierte de paralelo\na serie. Al cargarse se le añade\nel dato + el bit de start y un bit\na 1 (idle). Por la entrada serie\nse añade un 1, para transmitir el \nbit de stop",
                "readonly": true
              },
              "position": {
                "x": 888,
                "y": 328
              },
              "size": {
                "width": 320,
                "height": 128
              }
            },
            {
              "id": "1cf331eb-36c9-4f42-b216-723d7cb8415e",
              "type": "basic.info",
              "data": {
                "info": "Registrar la salida serie, para cumplir con las\nreglas de diseño síncrono, ya que es una línea\nasíncrona (hay que evitar los posibles glitches)",
                "readonly": true
              },
              "position": {
                "x": 1144,
                "y": 584
              },
              "size": {
                "width": 400,
                "height": 64
              }
            },
            {
              "id": "f0c76838-9322-4bc0-9125-2078f43c44a0",
              "type": "basic.info",
              "data": {
                "info": "Señal de Ready. Se pone a 1 para indicar\nque el transmisor está listo para enviar\nun dato nuevo",
                "readonly": true
              },
              "position": {
                "x": 1336,
                "y": 80
              },
              "size": {
                "width": 368,
                "height": 64
              }
            },
            {
              "id": "cb578f7e-e867-419c-944a-6d8f02ef87c6",
              "type": "basic.info",
              "data": {
                "info": "Línea de transmisión serie",
                "readonly": true
              },
              "position": {
                "x": 1400,
                "y": 456
              },
              "size": {
                "width": 240,
                "height": 32
              }
            },
            {
              "id": "84087aad-8ca4-404b-8d6e-a1b9eed48220",
              "type": "basic.info",
              "data": {
                "info": "Microórdenes (Señales de control):\n\n* RDY: Indica que el transmisor está lista para transmitir\n* LOAD: Se activa cuando hay que cargar el dato en el registro de desplazamiento\n* BAUD_EN: Activar el generador de baudios.\n* LD_ID: (Load input data). Capturar el dato a enviar",
                "readonly": true
              },
              "position": {
                "x": 600,
                "y": -152
              },
              "size": {
                "width": 624,
                "height": 112
              }
            },
            {
              "id": "4424c509-f594-4118-b878-93d7212f9ea0",
              "type": "basic.info",
              "data": {
                "info": "Diseño dividido en Ruta de datos + Controlador\nLa ruta de datos está formada por:\n* Generador de baudios (Corazón)\n* Registro de 8 bits para capturar el dato de entrada\n* Registro de Desplazamiento de 10 bits para pasar de datos en paralelo a serie",
                "readonly": true
              },
              "position": {
                "x": -96,
                "y": -136
              },
              "size": {
                "width": 624,
                "height": 96
              }
            },
            {
              "id": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
              "type": "9a8598aecfe58cbc8d0e2fb750861d3477ded781",
              "position": {
                "x": 168,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "d9ee5bc8-98e7-4d82-9e50-4eaa954edd78",
                "port": "47f26063-a63e-443b-a7fb-cfe694929fbd"
              },
              "target": {
                "block": "e5ff03e9-10d0-43c5-b5a7-3cb810ec621c",
                "port": "b81f2b1c-f687-4816-b1db-4a77e15f506b"
              },
              "size": 8
            },
            {
              "source": {
                "block": "85f06c28-db36-4d63-b759-b9685365a86e",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "e5ff03e9-10d0-43c5-b5a7-3cb810ec621c",
                "port": "5db5f3e0-ab6f-45a1-a585-73734653558f"
              },
              "vertices": [
                {
                  "x": 616,
                  "y": 584
                }
              ]
            },
            {
              "source": {
                "block": "e1be7d79-c5f9-4eb5-ae5d-1bc24bc644ed",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "e5ff03e9-10d0-43c5-b5a7-3cb810ec621c",
                "port": "5d1f9ede-b339-421c-942b-7677dcf404d2"
              }
            },
            {
              "source": {
                "block": "e5ff03e9-10d0-43c5-b5a7-3cb810ec621c",
                "port": "49fcf4b2-9522-42cf-84e1-25ef5466edf4"
              },
              "target": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "e5f363c4-37a1-4399-99e4-809058bf7c78"
              },
              "size": 10
            },
            {
              "source": {
                "block": "c2229c0e-2f0c-486b-ad04-204da132234a",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "6c7320fb-a511-4db9-b8fe-277da9f2b05f"
              }
            },
            {
              "source": {
                "block": "626f4ee9-ce8a-4448-b447-2329e5f281bc",
                "port": "29bddefc-ced5-472d-a686-a3f6fbf75513"
              },
              "target": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "ccff2827-0e68-4cfa-a78e-9a4879be8ec7"
              },
              "vertices": [
                {
                  "x": 800,
                  "y": 512
                }
              ]
            },
            {
              "source": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "381a7d2f-5024-4628-b127-b72743b50fbc"
              },
              "target": {
                "block": "50868ddc-496f-4d14-87f3-9348244883b8",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            },
            {
              "source": {
                "block": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
                "port": "out"
              },
              "target": {
                "block": "626f4ee9-ce8a-4448-b447-2329e5f281bc",
                "port": "386e0f30-37fb-48a8-895c-a4e723639c70"
              },
              "vertices": [
                {
                  "x": 440,
                  "y": 296
                }
              ]
            },
            {
              "source": {
                "block": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
                "port": "out"
              },
              "target": {
                "block": "d9ee5bc8-98e7-4d82-9e50-4eaa954edd78",
                "port": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5"
              },
              "vertices": [
                {
                  "x": 440,
                  "y": 424
                }
              ]
            },
            {
              "source": {
                "block": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
                "port": "out"
              },
              "target": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "16f16af6-3831-4c6e-9047-4bcd02dddfea"
              },
              "vertices": [
                {
                  "x": 840,
                  "y": 88
                }
              ]
            },
            {
              "source": {
                "block": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
                "port": "out"
              },
              "target": {
                "block": "50868ddc-496f-4d14-87f3-9348244883b8",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              }
            },
            {
              "source": {
                "block": "50868ddc-496f-4d14-87f3-9348244883b8",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "e6c2da7b-a669-4a51-bf9c-72f0c912467d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "dc314b22-353f-4a77-a835-7fa80424a2fd",
                "port": "out"
              },
              "target": {
                "block": "d9ee5bc8-98e7-4d82-9e50-4eaa954edd78",
                "port": "33700e97-a265-48de-8d15-7a54ad25acf6"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c4bb4e9d-2689-4d04-9220-9b0baa42b3a6",
                "port": "out"
              },
              "target": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "2c029558-0292-44d8-8645-159182ee6203"
              }
            },
            {
              "source": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "10a86127-7cc9-4d06-b52e-a7c027fbebb4"
              },
              "target": {
                "block": "d9ee5bc8-98e7-4d82-9e50-4eaa954edd78",
                "port": "fc45acac-34e6-4c46-a0bd-a1baaefefa91"
              },
              "vertices": [
                {
                  "x": 312,
                  "y": 472
                }
              ]
            },
            {
              "source": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "6e3e2e10-197d-4e9b-b7e0-e64388102c1e"
              },
              "target": {
                "block": "626f4ee9-ce8a-4448-b447-2329e5f281bc",
                "port": "1111e390-1534-49b7-aef7-145997ec6f52"
              },
              "vertices": [
                {
                  "x": 328,
                  "y": 304
                }
              ]
            },
            {
              "source": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "6127f386-8923-4284-9f7b-c0448b86956b"
              },
              "target": {
                "block": "632a6769-5dc2-4ebf-ac51-1f9312cfc72c",
                "port": "215babc5-2014-44bc-a025-2a29bba63e8d"
              },
              "vertices": [
                {
                  "x": 816,
                  "y": 304
                }
              ]
            },
            {
              "source": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "1f48e9e4-76f2-41d4-adca-872b5b9c8002"
              },
              "target": {
                "block": "de9df409-6820-4027-adef-95a601340d2b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "626f4ee9-ce8a-4448-b447-2329e5f281bc",
                "port": "29bddefc-ced5-472d-a686-a3f6fbf75513"
              },
              "target": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "326a7d3a-de51-4d10-96bf-56b46502cbb0"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 168
                },
                {
                  "x": 96,
                  "y": 160
                }
              ]
            },
            {
              "source": {
                "block": "0f2b14fb-a24c-4220-b849-cbecbe668fc3",
                "port": "out"
              },
              "target": {
                "block": "bf7be4d0-3fde-45ca-9329-abf3d9b78a7c",
                "port": "403d921e-c86b-443a-b9b2-df9905e3ad2f"
              }
            }
          ]
        }
      }
    },
    "2393067d102d16e1ec56845b622db53a04bf9321": {
      "package": {
        "name": "Reg8_ld",
        "version": "0.0.1",
        "description": "Registro de 8 bits, con entrada de load, inicializado a 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22109.404%22%20height=%2277.949%22%20viewBox=%220%200%20102.56663%2073.076845%22%3E%3Cg%20transform=%22translate(-208.312%20-424.877)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22207.303%22%20y=%22444.804%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22207.303%22%20y=%22444.804%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22212.366%22%20y=%22480.075%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22212.366%22%20y=%22480.075%22%3E0x00%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2257.074%22%20height=%2231.82%22%20x=%22209.812%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 496,
                "y": 128
              }
            },
            {
              "id": "fc45acac-34e6-4c46-a0bd-a1baaefefa91",
              "type": "basic.input",
              "data": {
                "name": "ld",
                "clock": false
              },
              "position": {
                "x": 496,
                "y": 240
              }
            },
            {
              "id": "47f26063-a63e-443b-a7fb-cfe694929fbd",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1208,
                "y": 256
              }
            },
            {
              "id": "33700e97-a265-48de-8d15-7a54ad25acf6",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 496,
                "y": 368
              }
            },
            {
              "id": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] do = 8'h00;\n\nalways @(posedge clk)\n  if (load)\n    do <= di;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "load"
                    },
                    {
                      "name": "di",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ],
                  "out": [
                    {
                      "name": "do",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 800,
                "y": 200
              },
              "size": {
                "width": 256,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "33700e97-a265-48de-8d15-7a54ad25acf6",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "di"
              },
              "size": 8
            },
            {
              "source": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "do"
              },
              "target": {
                "block": "47f26063-a63e-443b-a7fb-cfe694929fbd",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 216
                }
              ]
            },
            {
              "source": {
                "block": "fc45acac-34e6-4c46-a0bd-a1baaefefa91",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "load"
              },
              "vertices": [
                {
                  "x": 672,
                  "y": 288
                }
              ]
            }
          ]
        }
      }
    },
    "b734f60cce5a9de8621cbbd63cf95b689e40512c": {
      "package": {
        "name": "1",
        "version": "0.1",
        "description": "Un bit constante a 1",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.632%22%20height=%2269.34%22%20viewBox=%220%200%2031.530464%2065.006656%22%3E%3Cpath%20d=%22M3.517%2012.015L19%200l12.53%202.863-10.012%2043.262-9.746-2.227%207.7-34.532L8.03%2016.38z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22/%3E%3Cpath%20d=%22M17.593%2043.464l7.822%2010.472-6.56%207.919%202.27%202.043M15.985%2043.719l-4.542%2010.473-10.345%202.043.757%203.32%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.196%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 1\nassign q = 1'b1;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            },
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b8d6b212e2da99bfda91117e9facfbd339b49fa1": {
      "package": {
        "name": "Join10-8-2x1",
        "version": "0.0.1",
        "description": "Agregador de un bus de 8 más dos bits para formar un bus de 10",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2277.795%22%20height=%2237.565%22%20viewBox=%220%200%2072.933024%2035.217392%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22.413%22%20y=%226.994%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%22.413%22%20y=%226.994%22%3EH%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2234.323%22%20y=%2229.073%22%20font-weight=%22400%22%20font-size=%2212.858%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2234.323%22%20y=%2229.073%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EJoin%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%221.076%22%20y=%2235.217%22%20font-weight=%22400%22%20font-size=%229.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%221.076%22%20y=%2235.217%22%3EL%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M28.566%2015.645l43.895-.105-.005-6.852-71.61.036v5.224l27.883-.252z%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3Cpath%20d=%22M28.4%2014.486L12.65%2020.03H.68M29.027%2014.993L12.44%2025.773H.469%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%22.938%22%20stroke-linecap=%22square%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "b81f2b1c-f687-4816-b1db-4a77e15f506b",
              "type": "basic.input",
              "data": {
                "name": "i2",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 104,
                "y": 128
              }
            },
            {
              "id": "49fcf4b2-9522-42cf-84e1-25ef5466edf4",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[9:0]",
                "size": 10
              },
              "position": {
                "x": 640,
                "y": 168
              }
            },
            {
              "id": "5db5f3e0-ab6f-45a1-a585-73734653558f",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 208
              }
            },
            {
              "id": "5d1f9ede-b339-421c-942b-7677dcf404d2",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 288
              }
            },
            {
              "id": "eb9a3349-e268-44bb-a19b-c721d37d5019",
              "type": "basic.code",
              "data": {
                "code": "assign o = {i2,i1,i0};\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i2",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "i1"
                    },
                    {
                      "name": "i0"
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[9:0]",
                      "size": 10
                    }
                  ]
                }
              },
              "position": {
                "x": 312,
                "y": 136
              },
              "size": {
                "width": 240,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b81f2b1c-f687-4816-b1db-4a77e15f506b",
                "port": "out"
              },
              "target": {
                "block": "eb9a3349-e268-44bb-a19b-c721d37d5019",
                "port": "i2"
              },
              "size": 8
            },
            {
              "source": {
                "block": "5db5f3e0-ab6f-45a1-a585-73734653558f",
                "port": "out"
              },
              "target": {
                "block": "eb9a3349-e268-44bb-a19b-c721d37d5019",
                "port": "i1"
              },
              "vertices": [
                {
                  "x": 248,
                  "y": 232
                }
              ]
            },
            {
              "source": {
                "block": "5d1f9ede-b339-421c-942b-7677dcf404d2",
                "port": "out"
              },
              "target": {
                "block": "eb9a3349-e268-44bb-a19b-c721d37d5019",
                "port": "i0"
              }
            },
            {
              "source": {
                "block": "eb9a3349-e268-44bb-a19b-c721d37d5019",
                "port": "o"
              },
              "target": {
                "block": "49fcf4b2-9522-42cf-84e1-25ef5466edf4",
                "port": "in"
              },
              "size": 10
            }
          ]
        }
      }
    },
    "fec7ff39e4c71bcdf0ca03690e64aab18405ad25": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.641%22%20height=%2258.608%22%20viewBox=%220%200%2031.538733%2054.944538%22%3E%3Cg%20stroke=%22#00f%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%3E%3Cpath%20d=%22M21.822%2033.91l4.092%208.992-3.772%209.727%204.181%201.311M13.356%2034.68s-1.091%208.252-2.585%208.918C9.278%2044.265%201%2050.456%201%2050.456l2.647%203.256%22%20fill=%22none%22%20stroke-width=%222%22/%3E%3Cpath%20d=%22M19.787%202.504a11.65%2017.168%2028.167%200%200-14.101%2010.6%2011.65%2017.168%2028.167%200%200%202.166%2020.634%2011.65%2017.168%2028.167%200%200%2018.373-9.636%2011.65%2017.168%2028.167%200%200-2.166-20.633%2011.65%2017.168%2028.167%200%200-4.272-.965zm-1.31%205.123a8.864%2012.535%2028.167%200%201%203.232.766%208.864%2012.535%2028.167%200%201%201.898%2015.234%208.864%2012.535%2028.167%200%201-13.732%206.867A8.864%2012.535%2028.167%200%201%207.979%2015.26a8.864%2012.535%2028.167%200%201%2010.498-7.633z%22%20fill=%22#00f%22%20stroke-width=%225%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            },
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b4ce62fd32a27565a2cc8fbbd56277aab1018a3c": {
      "package": {
        "name": "Baudgen-tx-115200",
        "version": "0.0.1",
        "description": "Generador de pulsos a 115200 baudios, para transmisión serie",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22116.563%22%20height=%22107.832%22%20viewBox=%220%200%20109.27784%20101.09301%22%3E%3Ctext%20y=%22100.766%22%20x=%222.348%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2240.397%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22100.766%22%20x=%222.348%22%20font-weight=%22700%22%20font-size=%2223.084%22%3E115200%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M40.85%2073.768c-1.314-2.254-3.35-4.461-7.21-7.812-2.092-1.815-3.364-2.823-10.606-8.401-5.676-4.373-8.508-6.8-11.79-10.101-3.28-3.302-5.208-5.932-6.862-9.361-1.056-2.19-1.782-4.3-2.234-6.492-.573-2.785-.65-3.728-.648-7.83.004-5.38.182-6.275%201.954-9.865%201.317-2.666%202.317-4.07%204.4-6.18C9.877%205.68%2011.19%204.75%2014.03%203.35c3.155-1.556%205.437-1.964%2010.138-1.813%203.653.118%204.99.48%207.886%202.142%204.558%202.615%208.095%206.813%209.074%2010.77.16.647.325%201.177.367%201.177.042%200%20.411-.757.82-1.682%201.392-3.145%202.685-5.064%204.74-7.038C53.342.86%2063.257-.234%2071.274%204.234c3.274%201.824%205.938%204.48%208.002%207.978%201.625%202.753%202.456%206.41%202.598%2011.433.205%207.277-1.13%2012.32-4.683%2017.694-1.41%202.133-2.453%203.425-4.409%205.46-3.156%203.288-6.002%205.704-12.72%2010.799-4.24%203.215-6.754%205.282-10.39%208.55-2.916%202.618-7.432%207.176-7.867%207.938-.19.333-.362.605-.382.605-.02%200-.278-.415-.574-.923z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3Cpath%20d=%22M26.952%2049.239h10.205V22.905h7.952V49.28H53.8%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3Ctext%20y=%2272.74%22%20x=%2261.743%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22red%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2272.74%22%20x=%2261.743%22%20font-weight=%22700%22%20font-size=%2217.085%22%3EBaud%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "386e0f30-37fb-48a8-895c-a4e723639c70",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 256,
                "y": 176
              }
            },
            {
              "id": "29bddefc-ced5-472d-a686-a3f6fbf75513",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 1200,
                "y": 288
              }
            },
            {
              "id": "1111e390-1534-49b7-aef7-145997ec6f52",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": 256,
                "y": 408
              }
            },
            {
              "id": "4ef25133-3f42-45be-b235-d27463ec5370",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constants for obtaining standard BAURATES:\n`define B115200 103  //-- 103 for TX, 104 for RX\n\n`define B57600  208\n`define B38400  313\n\n`define B19200  625\n`define B9600   1250\n`define B4800   2500\n`define B2400   5000\n`define B1200   10000\n`define B600    20000\n`define B300    40000\n\n\n//-- Default Baudrate\nlocalparam BAUDRATE = `B115200;\n\n//-- Number of bits needed for storing the baudrate divisor\nlocalparam N = $clog2(BAUDRATE);\n\n//-- Counter for implementing the divisor (it is a BAUDRATE module counter)\n//-- (when BAUDRATE is reached, it start again from 0)\nreg [N-1:0] divcounter = 0;\n\nalways @(posedge clk)\n\n  if (ena)\n    //-- Normal working: counting. When the maximum count is reached, it starts from 0\n    divcounter <= (divcounter == BAUDRATE - 1) ? 0 : divcounter + 1;\n  else\n    //-- Counter fixed to its maximum value\n    //-- When it is resumed it start from 0\n    divcounter <= BAUDRATE - 1;\n\n//-- The output is 1 when the counter is 0, if clk_ena is active\n//-- It is 1 only for one system clock cycle\nassign clk_out = (divcounter == 0) ? ena : 0;\n\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "ena"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 456,
                "y": 88
              },
              "size": {
                "width": 656,
                "height": 464
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "4ef25133-3f42-45be-b235-d27463ec5370",
                "port": "clk_out"
              },
              "target": {
                "block": "29bddefc-ced5-472d-a686-a3f6fbf75513",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "386e0f30-37fb-48a8-895c-a4e723639c70",
                "port": "out"
              },
              "target": {
                "block": "4ef25133-3f42-45be-b235-d27463ec5370",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "1111e390-1534-49b7-aef7-145997ec6f52",
                "port": "out"
              },
              "target": {
                "block": "4ef25133-3f42-45be-b235-d27463ec5370",
                "port": "ena"
              }
            }
          ]
        }
      }
    },
    "3c8460fd3d53757d2614ea6538f84e4611739d26": {
      "package": {
        "name": "SReg10-ini-3FF",
        "version": "0.0.1",
        "description": "Registro de desplazamiento de 10 bits, inicializado con todo 1s. Carga paralelo con load = 1. Desplazamiento con cada pulso de clk_baud",
        "author": "Juan Gonzalez-Gomez (Obijjuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22123.473%22%20height=%2298.316%22%20viewBox=%220%200%20115.75597%2092.170889%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-5.231-2.42L1.324-.01-5.23%202.401c1.047-1.423%201.041-3.37%200-4.821z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.375%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-195.123%20-405.783)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22193.161%22%20y=%22445.309%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22193.161%22%20y=%22445.309%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22200.749%22%20y=%22480.075%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22200.749%22%20y=%22480.075%22%3E0x3FF%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2270.206%22%20height=%2231.82%22%20x=%22196.68%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3Cpath%20d=%22M200.679%20413.606h103.54%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20marker-end=%22url(#a)%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "16f16af6-3831-4c6e-9047-4bcd02dddfea",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -96,
                "y": 16
              }
            },
            {
              "id": "215babc5-2014-44bc-a025-2a29bba63e8d",
              "type": "basic.input",
              "data": {
                "name": "load",
                "clock": false
              },
              "position": {
                "x": -96,
                "y": 88
              }
            },
            {
              "id": "381a7d2f-5024-4628-b127-b72743b50fbc",
              "type": "basic.output",
              "data": {
                "name": "ser_out"
              },
              "position": {
                "x": 664,
                "y": 128
              }
            },
            {
              "id": "ccff2827-0e68-4cfa-a78e-9a4879be8ec7",
              "type": "basic.input",
              "data": {
                "name": "clk_baud",
                "clock": false
              },
              "position": {
                "x": -96,
                "y": 160
              }
            },
            {
              "id": "e5f363c4-37a1-4399-99e4-809058bf7c78",
              "type": "basic.input",
              "data": {
                "name": "data",
                "range": "[9:0]",
                "clock": false,
                "size": 10
              },
              "position": {
                "x": -96,
                "y": 232
              }
            },
            {
              "id": "6c7320fb-a511-4db9-b8fe-277da9f2b05f",
              "type": "basic.input",
              "data": {
                "name": "ser_in",
                "clock": false
              },
              "position": {
                "x": -96,
                "y": 304
              }
            },
            {
              "id": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
              "type": "basic.code",
              "data": {
                "code": "reg [9:0] shifter = 10'b11_1111_1111;\n\nalways @(posedge clk)\n  //-- Load mode\n  if  (load == 1)\n    shifter <= data;\n\n  //-- Shift mode\n  else if (load == 0 && clk_baud == 1)\n    shifter <= {ser_in, shifter[9:1]};\n    \n//-- Serial output (less significant bit)    \nassign ser_out = shifter[0];",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "load"
                    },
                    {
                      "name": "clk_baud"
                    },
                    {
                      "name": "data",
                      "range": "[9:0]",
                      "size": 10
                    },
                    {
                      "name": "ser_in"
                    }
                  ],
                  "out": [
                    {
                      "name": "ser_out"
                    }
                  ]
                }
              },
              "position": {
                "x": 208,
                "y": 56
              },
              "size": {
                "width": 368,
                "height": 208
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "ser_out"
              },
              "target": {
                "block": "381a7d2f-5024-4628-b127-b72743b50fbc",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "215babc5-2014-44bc-a025-2a29bba63e8d",
                "port": "out"
              },
              "target": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "load"
              }
            },
            {
              "source": {
                "block": "ccff2827-0e68-4cfa-a78e-9a4879be8ec7",
                "port": "out"
              },
              "target": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "clk_baud"
              },
              "vertices": [
                {
                  "x": 56,
                  "y": 160
                }
              ]
            },
            {
              "source": {
                "block": "6c7320fb-a511-4db9-b8fe-277da9f2b05f",
                "port": "out"
              },
              "target": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "ser_in"
              }
            },
            {
              "source": {
                "block": "e5f363c4-37a1-4399-99e4-809058bf7c78",
                "port": "out"
              },
              "target": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "data"
              },
              "vertices": [
                {
                  "x": 80,
                  "y": 232
                }
              ],
              "size": 10
            },
            {
              "source": {
                "block": "16f16af6-3831-4c6e-9047-4bcd02dddfea",
                "port": "out"
              },
              "target": {
                "block": "e47e9b19-2bc9-4ae8-9c2e-95153b0f819c",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 104,
                  "y": 80
                }
              ]
            }
          ]
        }
      }
    },
    "5d56f16d3f855d65c6efb53721204b2bf0dc5489": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 0",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22310.844%22%20y=%22395.812%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22310.844%22%20y=%22395.812%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22316.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22316.916%22%20y=%22420.476%22%3E1%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "9402f46c-f0c1-489e-9870-4a7918bacf00",
              "type": "f031e4fc352e6ede045a170c47e79b3daea935b9",
              "position": {
                "x": 368,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "e85c1424-78de-4f24-a4bc-6a2901b26148"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "9402f46c-f0c1-489e-9870-4a7918bacf00",
                "port": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b"
              }
            }
          ]
        }
      }
    },
    "f031e4fc352e6ede045a170c47e79b3daea935b9": {
      "package": {
        "name": "Biestable-D-0",
        "version": "0.0.1",
        "description": "Biestable D inicializado a 1",
        "author": "Juan Gonzalez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22346.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22346.916%22%20y=%22420.476%22%3E1%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "1efbaf77-17bd-4606-966f-21008e0a1556",
              "type": "basic.constant",
              "data": {
                "name": "INI",
                "value": "1",
                "local": true
              },
              "position": {
                "x": 376,
                "y": 72
              }
            },
            {
              "id": "e85c1424-78de-4f24-a4bc-6a2901b26148",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 120,
                "y": 112
              }
            },
            {
              "id": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
              "type": "7bd2552a05ad36e0726c3b65301c8a223561ad9f",
              "position": {
                "x": 376,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 608,
                "y": 184
              }
            },
            {
              "id": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 120,
                "y": 200
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1efbaf77-17bd-4606-966f-21008e0a1556",
                "port": "constant-out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "bfd12554-1a25-4ee2-8ab9-eeefad56595e"
              }
            },
            {
              "source": {
                "block": "e85c1424-78de-4f24-a4bc-6a2901b26148",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "6855f64f-fa1c-4371-b2e1-a98970674a96"
              }
            },
            {
              "source": {
                "block": "78ec5b41-e94f-4892-a7c5-42f2b4970c1b",
                "port": "out"
              },
              "target": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2"
              }
            },
            {
              "source": {
                "block": "dca68ad6-8ef1-4bf1-b17b-ec58e5fe751d",
                "port": "ffdd9aa2-aea3-4aa9-8431-80e799226774"
              },
              "target": {
                "block": "f164a06d-b8e3-480d-b351-5d7d1e7ae3a2",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "7bd2552a05ad36e0726c3b65301c8a223561ad9f": {
      "package": {
        "name": "Flip-flop D",
        "version": "1.0.0",
        "description": "Delay flip-flop",
        "author": "Carlos Diaz",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2287.998%22%20height=%2260.81%22%20viewBox=%220%200%2082.498336%2057.009284%22%3E%3Cg%20transform=%22translate(-290.853%20-371.476)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22287.101%22%20y=%22427.822%22%20font-weight=%22400%22%20font-size=%2240.87%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22287.101%22%20y=%22427.822%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22289.914%22%20y=%22386.672%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22289.914%22%20y=%22386.672%22%3EFlip-Flop%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22341.738%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22341.738%22%20y=%22420.476%22%3EIni%3C/tspan%3E%3C/text%3E%3Crect%20width=%2237.881%22%20height=%2227.274%22%20x=%22334.396%22%20y=%22400.212%22%20ry=%224.5%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
              "type": "basic.constant",
              "data": {
                "name": "DINI",
                "value": "0",
                "local": false
              },
              "position": {
                "x": 568,
                "y": 16
              }
            },
            {
              "id": "e5222a6e-4717-4f08-99d7-7cde897060ca",
              "type": "basic.code",
              "data": {
                "code": "// D flip-flop\n// parameter DINI = 0;\n\nreg q = DINI;\n\nalways @(posedge clk)\nbegin\n  q <= d;\nend\n\n",
                "params": [
                  {
                    "name": "DINI"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "d"
                    }
                  ],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 432,
                "y": 128
              },
              "size": {
                "width": 368,
                "height": 272
              }
            },
            {
              "id": "6855f64f-fa1c-4371-b2e1-a98970674a96",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 232,
                "y": 168
              }
            },
            {
              "id": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 864,
                "y": 232
              }
            },
            {
              "id": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": 232,
                "y": 304
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "b32a6101-5bd1-4bcf-ae5f-e569b958a6a2",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "d"
              }
            },
            {
              "source": {
                "block": "6855f64f-fa1c-4371-b2e1-a98970674a96",
                "port": "out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "q"
              },
              "target": {
                "block": "ffdd9aa2-aea3-4aa9-8431-80e799226774",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "bfd12554-1a25-4ee2-8ab9-eeefad56595e",
                "port": "constant-out"
              },
              "target": {
                "block": "e5222a6e-4717-4f08-99d7-7cde897060ca",
                "port": "DINI"
              }
            }
          ]
        }
      }
    },
    "9a8598aecfe58cbc8d0e2fb750861d3477ded781": {
      "package": {
        "name": "Serial_tx_controller",
        "version": "0.1",
        "description": "Controlador para transmisor serie a 115200 baudios. Bloques en verilog",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22104.379%22%20height=%2297.208%22%20viewBox=%220%200%2097.855538%2091.133307%22%3E%3Cpath%20d=%22M30.63%2060.216a12.161%2012.161%200%200%201-2.118-.807c-1.344-.702-3.332-2.71-4.051-4.09l-.556-1.067-1.712-.046c-1.368-.036-1.925-.125-2.77-.44-2.98-1.112-5.217-3.415-6.123-6.304-.435-1.39-.46-3.63-.054-4.987.15-.504.252-.93.225-.945-2.14-1.239-4.028-3.672-4.69-6.043-.326-1.167-.26-3.509.134-4.775.583-1.871%201.933-3.8%203.478-4.968.433-.327.503-.452.356-.628-.357-.43-.964-2.302-1.061-3.276-.333-3.32%202.195-6.876%205.615-7.9l.9-.27-.095-1.03c-.441-4.731%204.034-8.883%208.792-8.157.916.14%201.274.145%201.316.018.122-.364%201.286-1.712%201.946-2.251.91-.744%202.532-1.49%203.628-1.667%202.928-.476%206.381%201.552%207.889%204.631l.604%201.235.042%2022.364c.045%2024.049.061%2023.5-.749%2025.66-1.618%204.316-6.536%206.896-10.946%205.743zm21.797.077c-2.924-.634-5.726-3.036-6.76-5.794-.826-2.203-.803-1.41-.758-25.614l.04-22.452.611-1.233C47.07%202.15%2050.497.109%2053.338.566c1.12.18%202.076.56%203.1%201.227.863.563%202.163%201.9%202.444%202.514.154.337.222.354.96.235.436-.07%201.322-.118%201.97-.105%204.173.081%207.7%204.047%207.312%208.22l-.097%201.046.51.106c1.982.41%204.256%202.248%205.22%204.217.783%201.596.99%203.02.66%204.537-.143.654-.442%201.552-.666%201.997l-.408.81.518.39c1.519%201.147%202.872%203.083%203.462%204.952.397%201.26.46%203.584.129%204.775-.58%202.08-2.194%204.35-3.927%205.517-.393.265-.736.498-.763.518-.027.02.075.449.226.953.405%201.356.38%203.598-.055%204.987-.902%202.875-3.158%205.198-6.123%206.304-.845.315-1.402.404-2.77.44l-1.712.046-.556%201.066c-.718%201.38-2.707%203.389-4.048%204.09-1.96%201.023-4.202%201.338-6.297.885z%22%20fill=%22#faa%22%20stroke=%22#000%22/%3E%3Ctext%20y=%2275.222%22%20x=%223.643%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2275.222%22%20x=%223.643%22%20font-weight=%22700%22%20font-size=%2217.085%22%3ESerial%3C/tspan%3E%3C/text%3E%3Ctext%20y=%2290.886%22%20x=%22-.87%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2217.472%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EController%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.486%2060.852a12.161%2012.161%200%200%201-2.117-.808c-1.344-.702-3.332-2.709-4.052-4.09l-.555-1.066-1.712-.046c-1.368-.036-1.925-.125-2.77-.44-2.98-1.112-5.217-3.415-6.123-6.305-.436-1.389-.46-3.63-.055-4.986.151-.505.252-.93.226-.945-2.14-1.24-4.028-3.672-4.69-6.044-.327-1.166-.26-3.508.133-4.774.583-1.872%201.934-3.8%203.479-4.969.432-.326.503-.45.356-.627-.358-.43-.964-2.302-1.062-3.277-.332-3.32%202.196-6.876%205.616-7.9l.9-.27-.096-1.028c-.44-4.733%204.035-8.885%208.792-8.158.917.14%201.274.145%201.317.018.121-.365%201.286-1.712%201.946-2.252.909-.743%202.532-1.489%203.628-1.667%202.927-.475%206.381%201.553%207.888%204.632l.605%201.235.042%2022.363c.045%2024.05.06%2023.5-.75%2025.662-1.617%204.315-6.535%206.895-10.946%205.742zm4.125-2.401c2.45-.653%204.236-2.498%204.822-4.98.154-.65.197-5.87.197-23.532V7.241l-.46-.83c-.575-1.035-1.437-1.823-2.58-2.358-1.253-.586-2.884-.573-4.063.033-1.099.565-1.94%201.458-2.573%202.73-.312.627-.686%201.135-.939%201.276-.386.215-.492.203-1.333-.152-1.356-.573-3.24-.552-4.465.048a5.034%205.034%200%200%200-2.481%202.71c-.286.755-.339%201.158-.287%202.182.037.731.168%201.45.313%201.722.137.256.469.934.738%201.506%201.436%203.059%205.58%204.902%208.783%203.907%201.323-.41%202.31-1.084%203.589-2.45.873-.932%201.184-1.166%201.547-1.166%201.022%200%201.555.95%201.065%201.895-.467.902-2.43%202.684-3.677%203.338l-1.16.609.384.236c.211.13.985.84%201.718%201.58%201.654%201.664%202.427%203.034%202.59%204.589.13%201.223.042%201.316-1.088%201.147-.674-.101-.705-.132-1.449-1.462-1.533-2.74-3.819-4.537-7.112-5.588-1.925-.614-3.188-1.145-4.038-1.698-1.11-.72-2.576-2.292-3.161-3.388l-.517-.968-.651.1c-.995.152-2.542.96-3.076%201.608-.905%201.094-1.166%201.852-1.175%203.402-.01%201.605.247%202.34%201.223%203.498.902%201.071.724%201.738-.652%202.45-1.062.548-2.526%201.948-2.992%202.86-.784%201.533-.998%203.451-.568%205.096.534%202.046%201.665%203.403%203.627%204.35%201.71.827%201.77%201.01.98%203.035-.503%201.294-.51%203.643-.015%204.988%201.24%203.363%204.82%205.04%208.59%204.024a12.888%2012.888%200%200%200%202.375-.954c3.909-2.154%205.068-5.599%203.31-9.831-1.132-2.728-3.72-4.343-6.765-4.223-.837.033-.958-.004-1.297-.397-.476-.552-.474-1.065.005-1.62.366-.426.425-.44%201.845-.427%204.5.04%207.807%202.715%209.08%207.344.403%201.47.434%203.64.071%204.995-.729%202.72-2.955%205.28-5.854%206.734-.951.476-.96.578-.163%201.84.872%201.378%202.517%202.58%204.013%202.933.904.212%202.852.19%203.726-.043zm17.672%202.477c-2.923-.633-5.726-3.035-6.76-5.794-.826-2.203-.802-1.41-.758-25.613l.041-22.453.61-1.232c1.511-3.05%204.938-5.091%207.779-4.634%201.119.18%202.076.559%203.099%201.226.864.564%202.163%201.9%202.445%202.515.154.337.221.354.96.235.436-.07%201.322-.118%201.969-.105%204.174.08%207.701%204.046%207.313%208.22l-.098%201.046.51.105c1.982.411%204.257%202.249%205.221%204.218.782%201.596.989%203.02.659%204.537-.142.653-.442%201.552-.666%201.997l-.407.81.518.39c1.518%201.146%202.872%203.083%203.461%204.952.398%201.26.46%203.584.13%204.774-.58%202.08-2.195%204.35-3.927%205.518a85.5%2085.5%200%200%200-.763.518c-.027.02.075.448.225.953.406%201.356.381%203.597-.054%204.986-.902%202.876-3.158%205.199-6.124%206.305-.845.315-1.401.404-2.77.44l-1.712.046-.555%201.066c-.719%201.38-2.708%203.388-4.049%204.089-1.96%201.024-4.202%201.339-6.297.885zm4.878-2.85c1.88-.879%202.957-2.155%203.729-4.421.526-1.547.785-1.705%202.317-1.417%201.385.26%203.113.142%204.265-.293%201.759-.664%203.273-2.262%203.87-4.084.336-1.023.384-3.355.09-4.318l-.194-.64-2.158-.016c-2.26-.017-3.944-.265-5.658-.835-.892-.296-1.116-.313-2.145-.16-.632.094-1.535.315-2.006.49-1.918.717-3.663%202.476-4.367%204.402-.373%201.022-.753%201.39-1.434%201.39-.561%200-1.213-.633-1.213-1.177%200-.225.155-.774.343-1.22%201.156-2.73%203.426-4.927%206.034-5.837l.81-.283-.673-.868c-.946-1.223-1.412-2.09-1.888-3.514-.74-2.206-.734-5.714.009-6.456.473-.471%201.256-.489%201.736-.038.338.317.35.407.266%202.23-.068%201.499-.03%202.115.18%202.918.616%202.346%202.367%204.57%204.299%205.458%201.675.77%203.046%201.013%205.746%201.017%202.214.003%202.405-.021%203.257-.411%201.038-.475%202.43-1.782%202.922-2.745%201.037-2.03%201.036-4.611-.002-6.643-.455-.889-1.913-2.292-2.962-2.85-.474-.252-.948-.569-1.054-.703-.35-.45-.223-1.05.372-1.757.975-1.158%201.232-1.893%201.223-3.498-.01-1.55-.27-2.308-1.175-3.402-.532-.645-2.08-1.456-3.066-1.607l-.642-.098-.691%201.067c-.969%201.494-2.681%203.157-3.829%203.716-1.202.586-3.052.719-4.689.336-1.368-.32-3.62-1.365-3.845-1.785-.28-.522-.197-1.111.214-1.521.486-.486%201.028-.487%201.861-.005%201.725.999%204.074%201.322%205.361.738.853-.388%201.976-1.51%202.791-2.793%201.109-1.743%201.287-2.28%201.287-3.878%200-1.228-.057-1.528-.436-2.299A5.227%205.227%200%200%200%2063.57%207.89c-1.05-.484-3.25-.474-4.285.018-.405.193-.83.35-.946.35-.431%200-.909-.51-1.361-1.452-1.191-2.483-3.54-3.678-5.919-3.012-1.662.466-3.252%201.998-3.667%203.536-.252.934-.123%2045.394.134%2046.306.672%202.386%202.387%204.13%204.731%204.813.439.128%201.305.188%202.288.159%201.383-.041%201.712-.108%202.616-.53z%22%20stroke=%22#000%22/%3E%3Ctext%20y=%2275.284%22%20x=%2263.165%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.899%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22green%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%2275.284%22%20x=%2263.165%22%20font-weight=%22700%22%20font-size=%2217.085%22%3ETX%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "403d921e-c86b-443a-b9b2-df9905e3ad2f",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -192,
                "y": -528
              }
            },
            {
              "id": "1f48e9e4-76f2-41d4-adca-872b5b9c8002",
              "type": "basic.output",
              "data": {
                "name": "RDY"
              },
              "position": {
                "x": 1016,
                "y": -320
              }
            },
            {
              "id": "6127f386-8923-4284-9f7b-c0448b86956b",
              "type": "basic.output",
              "data": {
                "name": "LOAD"
              },
              "position": {
                "x": 1024,
                "y": -104
              }
            },
            {
              "id": "326a7d3a-de51-4d10-96bf-56b46502cbb0",
              "type": "basic.input",
              "data": {
                "name": "clk_baud",
                "clock": false
              },
              "position": {
                "x": -32,
                "y": -48
              }
            },
            {
              "id": "6e3e2e10-197d-4e9b-b7e0-e64388102c1e",
              "type": "basic.output",
              "data": {
                "name": "BAUD_EN"
              },
              "position": {
                "x": 1024,
                "y": 112
              }
            },
            {
              "id": "10a86127-7cc9-4d06-b52e-a7c027fbebb4",
              "type": "basic.output",
              "data": {
                "name": "LD_ID"
              },
              "position": {
                "x": 1024,
                "y": 296
              }
            },
            {
              "id": "2c029558-0292-44d8-8645-159182ee6203",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": -32,
                "y": 376
              }
            },
            {
              "id": "e7f1aa4f-0dd1-44da-a57b-27dadfebb0cf",
              "type": "0a31bfdae58b3d8e6a3d3cd21ae47a361c16749c",
              "position": {
                "x": 1288,
                "y": -192
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
              "type": "basic.code",
              "data": {
                "code": "reg [1:0] o = 0;\n\n//-- Transition between states\nalways @(posedge clk)\n    o <= i;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "i",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 56,
                "y": -288
              },
              "size": {
                "width": 320,
                "height": 160
              }
            },
            {
              "id": "c56e5da7-d841-4d40-aad3-6a4ab7d4ee6b",
              "type": "basic.code",
              "data": {
                "code": "//-- Load the input-data register\n//-- The data is only loaded when in the IDLE state\n//-- and the start signal is set\nassign ld_id = (start && state==2'b00);\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "state",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "ld_id"
                    }
                  ]
                }
              },
              "position": {
                "x": 520,
                "y": 264
              },
              "size": {
                "width": 384,
                "height": 128
              }
            },
            {
              "id": "4716b1c3-dc31-46bb-9e76-0bda3f503e8d",
              "type": "basic.code",
              "data": {
                "code": "localparam IDLE  = 0;  //-- Idle state\n\nassign ready = (state == IDLE);\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "state",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "ready"
                    }
                  ]
                }
              },
              "position": {
                "x": 520,
                "y": -328
              },
              "size": {
                "width": 416,
                "height": 80
              }
            },
            {
              "id": "326fc08a-7736-4990-849b-331a385c6d6a",
              "type": "basic.code",
              "data": {
                "code": "localparam START  = 1;  //-- Start transmission\nassign load = (state == START);\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "state",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "load"
                    }
                  ]
                }
              },
              "position": {
                "x": 520,
                "y": -184
              },
              "size": {
                "width": 432,
                "height": 80
              }
            },
            {
              "id": "c8f9b450-0bc1-4092-a450-25d68be19453",
              "type": "basic.code",
              "data": {
                "code": "localparam IDLE  = 0;  //-- Idle staten\nassign baud_en = (state != IDLE);\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "state",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ],
                  "out": [
                    {
                      "name": "baud_en"
                    }
                  ]
                }
              },
              "position": {
                "x": 520,
                "y": 112
              },
              "size": {
                "width": 432,
                "height": 64
              }
            },
            {
              "id": "090083fd-1770-4189-9baf-521de4d02ad2",
              "type": "basic.info",
              "data": {
                "info": "CONTROLADOR PARA TRANSMISOR SERIE",
                "readonly": true
              },
              "position": {
                "x": -48,
                "y": -704
              },
              "size": {
                "width": 272,
                "height": 32
              }
            },
            {
              "id": "97423c24-790c-48ed-9570-9a6b832b03bc",
              "type": "basic.info",
              "data": {
                "info": "Máquina de etados (autómata finito)\nImplementado en varios bloques verilog",
                "readonly": true
              },
              "position": {
                "x": -64,
                "y": -632
              },
              "size": {
                "width": 320,
                "height": 48
              }
            },
            {
              "id": "cc1e566a-e998-4983-8f8c-c33d18a646e8",
              "type": "basic.info",
              "data": {
                "info": "Registro de estado.\nAlmacena el estado actual del\nAutómata",
                "readonly": true
              },
              "position": {
                "x": 72,
                "y": -368
              },
              "size": {
                "width": 240,
                "height": 64
              }
            },
            {
              "id": "432dd98b-df53-441b-b73b-40d88b1ead3d",
              "type": "basic.info",
              "data": {
                "info": "El autómata puede estar en 3 estados:\n\n* IDLE: Reposo. El transmisor está esperando a que se le de la orden de transmitir\n(mediante la activación de la señal start)\n* START: Comienzo de transmisión. Se captura el dato en el registro de desplazamiento\n* TRANS: Transmitiendo datos",
                "readonly": true
              },
              "position": {
                "x": 304,
                "y": -648
              },
              "size": {
                "width": 736,
                "height": 144
              }
            },
            {
              "id": "520d119e-f351-419b-938a-368b53e83366",
              "type": "basic.info",
              "data": {
                "info": "Lógica combinacional para generar la señal Ready,\na partir del estado actual",
                "readonly": true
              },
              "position": {
                "x": 528,
                "y": -392
              },
              "size": {
                "width": 416,
                "height": 48
              }
            },
            {
              "id": "c60f318d-10c7-4076-aa48-b3b590c63ca2",
              "type": "basic.info",
              "data": {
                "info": "Lógica combinacional para generar la señal LOAD\na partir del estado actual",
                "readonly": true
              },
              "position": {
                "x": 544,
                "y": -88
              },
              "size": {
                "width": 384,
                "height": 48
              }
            },
            {
              "id": "572d3f10-6aa3-4449-8ccc-bdd2003efb03",
              "type": "basic.info",
              "data": {
                "info": "Lógica combinacional para generar la señal BAUD_EN\na partir del estado actual",
                "readonly": true
              },
              "position": {
                "x": 528,
                "y": 48
              },
              "size": {
                "width": 416,
                "height": 48
              }
            },
            {
              "id": "ea2b19e4-184c-44dd-ae19-8d1e27bc18df",
              "type": "basic.info",
              "data": {
                "info": "Lógica combinacional para generar la señal LD_ID\na partir del estado actual",
                "readonly": true
              },
              "position": {
                "x": 520,
                "y": 208
              },
              "size": {
                "width": 416,
                "height": 48
              }
            },
            {
              "id": "5e532833-9c70-4071-a368-2ad6c065c13c",
              "type": "basic.info",
              "data": {
                "info": "Lógica combinacional para calcular el siguiente estado a partir del actual,\ndel contador de bits transmitidos y de la señal de entrada start",
                "readonly": true
              },
              "position": {
                "x": 1496,
                "y": -368
              },
              "size": {
                "width": 608,
                "height": 48
              }
            },
            {
              "id": "389c649e-317e-4ead-acce-3db1d3737c91",
              "type": "basic.code",
              "data": {
                "code": "\n//-- fsm states\nlocalparam IDLE  = 0;  //-- Idle state\nlocalparam START = 1;  //-- Start transmission\nlocalparam TRANS = 2;  //-- Transmitting data\n\n//-- Registers for storing the states\nreg [1:0] next_state;\n\n\n//-- Control signal generation and next states\nalways @(*) begin\n\n  case (state)\n\n    //-- Idle state\n    //-- Remain in this state until start is 1\n    IDLE:\n      if (start == 1)\n        next_state = START;\n      else\n        next_state = IDLE;\n\n    //-- 1 cycle long\n    //-- turn on the baudrate generator and the load the shift register\n    START:\n      next_state = TRANS;\n\n    //-- Stay here until all the bits have been sent\n    TRANS:\n      if (bitc == 11)\n        next_state = IDLE;\n      else\n        next_state = TRANS;\n\n    default: begin\n    end\n\n  endcase\nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "state",
                      "range": "[1:0]",
                      "size": 2
                    },
                    {
                      "name": "bitc",
                      "range": "[3:0]",
                      "size": 4
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "next_state",
                      "range": "[1:0]",
                      "size": 2
                    }
                  ]
                }
              },
              "position": {
                "x": 1496,
                "y": -304
              },
              "size": {
                "width": 608,
                "height": 256
              }
            },
            {
              "id": "2cf1cd67-d7a2-42fe-9082-46af21fc7e8e",
              "type": "basic.info",
              "data": {
                "info": "Contador de bits transmitidos",
                "readonly": true
              },
              "position": {
                "x": 1192,
                "y": -72
              },
              "size": {
                "width": 256,
                "height": 32
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "389c649e-317e-4ead-acce-3db1d3737c91",
                "port": "next_state"
              },
              "target": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "i"
              },
              "vertices": [
                {
                  "x": 2240,
                  "y": -432
                },
                {
                  "x": 624,
                  "y": -432
                },
                {
                  "x": 24,
                  "y": -368
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "4716b1c3-dc31-46bb-9e76-0bda3f503e8d",
                "port": "ready"
              },
              "target": {
                "block": "1f48e9e4-76f2-41d4-adca-872b5b9c8002",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "326fc08a-7736-4990-849b-331a385c6d6a",
                "port": "load"
              },
              "target": {
                "block": "e7f1aa4f-0dd1-44da-a57b-27dadfebb0cf",
                "port": "5029b66e-b9f1-4976-8497-3a36230b32f4"
              },
              "vertices": [
                {
                  "x": 1104,
                  "y": -144
                }
              ]
            },
            {
              "source": {
                "block": "e7f1aa4f-0dd1-44da-a57b-27dadfebb0cf",
                "port": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053"
              },
              "target": {
                "block": "389c649e-317e-4ead-acce-3db1d3737c91",
                "port": "bitc"
              },
              "size": 4
            },
            {
              "source": {
                "block": "2c029558-0292-44d8-8645-159182ee6203",
                "port": "out"
              },
              "target": {
                "block": "c56e5da7-d841-4d40-aad3-6a4ab7d4ee6b",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "2c029558-0292-44d8-8645-159182ee6203",
                "port": "out"
              },
              "target": {
                "block": "389c649e-317e-4ead-acce-3db1d3737c91",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "o"
              },
              "target": {
                "block": "389c649e-317e-4ead-acce-3db1d3737c91",
                "port": "state"
              },
              "size": 2
            },
            {
              "source": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "o"
              },
              "target": {
                "block": "4716b1c3-dc31-46bb-9e76-0bda3f503e8d",
                "port": "state"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": -288
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "o"
              },
              "target": {
                "block": "c8f9b450-0bc1-4092-a450-25d68be19453",
                "port": "state"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": 88
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "o"
              },
              "target": {
                "block": "c56e5da7-d841-4d40-aad3-6a4ab7d4ee6b",
                "port": "state"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": 240
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "o"
              },
              "target": {
                "block": "326fc08a-7736-4990-849b-331a385c6d6a",
                "port": "state"
              },
              "vertices": [
                {
                  "x": 424,
                  "y": -184
                }
              ],
              "size": 2
            },
            {
              "source": {
                "block": "326a7d3a-de51-4d10-96bf-56b46502cbb0",
                "port": "out"
              },
              "target": {
                "block": "e7f1aa4f-0dd1-44da-a57b-27dadfebb0cf",
                "port": "90bc9947-fd10-4de4-a441-2508bab14e92"
              },
              "vertices": [
                {
                  "x": 1160,
                  "y": -24
                }
              ]
            },
            {
              "source": {
                "block": "326fc08a-7736-4990-849b-331a385c6d6a",
                "port": "load"
              },
              "target": {
                "block": "6127f386-8923-4284-9f7b-c0448b86956b",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c8f9b450-0bc1-4092-a450-25d68be19453",
                "port": "baud_en"
              },
              "target": {
                "block": "6e3e2e10-197d-4e9b-b7e0-e64388102c1e",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "c56e5da7-d841-4d40-aad3-6a4ab7d4ee6b",
                "port": "ld_id"
              },
              "target": {
                "block": "10a86127-7cc9-4d06-b52e-a7c027fbebb4",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "403d921e-c86b-443a-b9b2-df9905e3ad2f",
                "port": "out"
              },
              "target": {
                "block": "18107b20-3fa9-4e10-a3ae-eb519116d4cc",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 0,
                  "y": -304
                }
              ]
            },
            {
              "source": {
                "block": "403d921e-c86b-443a-b9b2-df9905e3ad2f",
                "port": "out"
              },
              "target": {
                "block": "e7f1aa4f-0dd1-44da-a57b-27dadfebb0cf",
                "port": "c0854505-8d25-4c9f-9a3f-c5900782b2cf"
              },
              "vertices": [
                {
                  "x": 1192,
                  "y": -232
                }
              ]
            }
          ]
        }
      }
    },
    "0a31bfdae58b3d8e6a3d3cd21ae47a361c16749c": {
      "package": {
        "name": "Contador4-sr-ena",
        "version": "0.0.1",
        "description": "Contador de 4 bits, con reset sincrono y enable. Salida en bus",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22215.585%22%20height=%22145.758%22%20viewBox=%220%200%20202.11081%20136.64772%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M-1.926-1.21L1.352-.005l-3.278%201.206a2.05%202.05%200%200%200%200-2.411z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.1875%22%20stroke-linejoin=%22round%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-184.027%20-292.587)%22%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22318.242%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22340.77%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22340.77%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M319.74%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22192.91%22%20y=%22318.845%22%20font-weight=%22400%22%20font-size=%2234.561%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22192.91%22%20y=%22318.845%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EContador%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M378.373%20388.969V343.75%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22229.67%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22247.059%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22247.059%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M231.168%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22185.027%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22199.826%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22199.826%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M186.525%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22184.001%22%20y=%22428.746%22%20font-weight=%22400%22%20font-size=%2234.561%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%3E%3Ctspan%20x=%22184.001%22%20y=%22428.746%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EBUS%204%20Bits%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c0854505-8d25-4c9f-9a3f-c5900782b2cf",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 88,
                "y": -312
              }
            },
            {
              "id": "5029b66e-b9f1-4976-8497-3a36230b32f4",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": -224
              }
            },
            {
              "id": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053",
              "type": "basic.output",
              "data": {
                "name": "d",
                "range": "[3:0]",
                "size": 4
              },
              "position": {
                "x": 760,
                "y": -200
              }
            },
            {
              "id": "90bc9947-fd10-4de4-a441-2508bab14e92",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": 88,
                "y": -144
              }
            },
            {
              "id": "041648f1-a368-4d9d-b654-d0643978200d",
              "type": "basic.code",
              "data": {
                "code": "reg [3:0] _bitc = 0;\n\nalways @(posedge clk)\n  if (rst)\n    _bitc <= 0;\n  else if (rst == 0 && ena == 1)\n    _bitc <= _bitc + 1;\n    \nassign bitc = _bitc;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "ena"
                    }
                  ],
                  "out": [
                    {
                      "name": "bitc",
                      "range": "[3:0]",
                      "size": 4
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": -256
              },
              "size": {
                "width": 368,
                "height": 176
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "bitc"
              },
              "target": {
                "block": "6ec6b18d-e370-4bf5-934f-d6f37e5a4053",
                "port": "in"
              },
              "size": 4
            },
            {
              "source": {
                "block": "c0854505-8d25-4c9f-9a3f-c5900782b2cf",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 248,
                  "y": -256
                }
              ]
            },
            {
              "source": {
                "block": "5029b66e-b9f1-4976-8497-3a36230b32f4",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 248,
                  "y": -184
                }
              ]
            },
            {
              "source": {
                "block": "90bc9947-fd10-4de4-a441-2508bab14e92",
                "port": "out"
              },
              "target": {
                "block": "041648f1-a368-4d9d-b654-d0643978200d",
                "port": "ena"
              }
            }
          ]
        }
      }
    },
    "3ef04116e82fa21433e35100e073150a62372d72": {
      "package": {
        "name": "ADC0",
        "version": "0.1",
        "description": "Lectura conversor A/D 0",
        "author": "Juan Gonzalez-Gomez",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%203.02575%203.02575%22%20fill-rule=%22evenodd%22%20text-rendering=%22geometricPrecision%22%20image-rendering=%22optimizeQuality%22%20clip-rule=%22evenodd%22%20shape-rendering=%22geometricPrecision%22%3E%3Cdefs%3E%3Cstyle%3E.str0%7Bstroke:#4d4948;stroke-width:.0419965%7D.str2%7Bstroke:#007cc3;stroke-width:.084005%7D.str1%7Bstroke:#e77817;stroke-width:.168022;stroke-linecap:round%7D.fil1%7Bfill:none%7D.fil0%7Bfill:#4d4948%7D.fil2%7Bfill:#dededd%7D.fil3%7Bfill:#e77817%7D.fil4%7Bfill:#007cc3;fill-rule:nonzero%7D%3C/style%3E%3C/defs%3E%3Cg%20id=%22Diagram%22%3E%3Cg%20id=%22_49434888%22%3E%3Cpath%20id=%22_48862400%22%20d=%22M.798.322h1.43c.262%200%20.476.214.476.476v1.43a.477.477%200%200%201-.477.476H.798a.477.477%200%200%201-.476-.477V.798c0-.262.214-.476.476-.476z%22%20class=%22fil0%20str0%22/%3E%3Cpath%20id=%22_49181192%22%20class=%22fil1%20str1%22%20d=%22M.322%201.989H.084%22/%3E%3Cpath%20id=%22_49180400%22%20class=%22fil1%20str1%22%20d=%22M.322%201.751H.084%22/%3E%3Cpath%20id=%22_47145768%22%20class=%22fil1%20str1%22%20d=%22M.322%201.275H.084%22/%3E%3Cpath%20id=%22_48920496%22%20class=%22fil1%20str1%22%20d=%22M.322%201.513H.084%22/%3E%3Cpath%20id=%22_48884032%22%20class=%22fil1%20str1%22%20d=%22M.322%201.036H.084%22/%3E%3Cpath%20id=%22_49284760%22%20class=%22fil1%20str1%22%20d=%22M.322.798H.084%22/%3E%3Cpath%20id=%22_49247040%22%20class=%22fil1%20str1%22%20d=%22M.322%202.227H.084%22/%3E%3Cg%3E%3Cpath%20id=%22_49182112%22%20class=%22fil1%20str1%22%20d=%22M2.942%201.989h-.238%22/%3E%3Cpath%20id=%22_49182088%22%20class=%22fil1%20str1%22%20d=%22M2.942%201.751h-.238%22/%3E%3Cpath%20id=%22_49252888%22%20class=%22fil1%20str1%22%20d=%22M2.942%201.275h-.238%22/%3E%3Cpath%20id=%22_49246968%22%20class=%22fil1%20str1%22%20d=%22M2.942%201.513h-.238%22/%3E%3Cpath%20id=%22_22420176%22%20class=%22fil1%20str1%22%20d=%22M2.942%201.036h-.238%22/%3E%3Cpath%20id=%22_49252864%22%20class=%22fil1%20str1%22%20d=%22M2.942.798h-.238%22/%3E%3Cpath%20id=%22_47144824%22%20class=%22fil1%20str1%22%20d=%22M2.942%202.227h-.238%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20id=%22_47144800%22%20class=%22fil1%20str1%22%20d=%22M1.037%202.942v-.238%22/%3E%3Cpath%20id=%22_49284600%22%20class=%22fil1%20str1%22%20d=%22M1.275%202.942v-.238%22/%3E%3Cpath%20id=%22_46755208%22%20class=%22fil1%20str1%22%20d=%22M1.751%202.942v-.238%22/%3E%3Cpath%20id=%22_49238520%22%20class=%22fil1%20str1%22%20d=%22M1.513%202.942v-.238%22/%3E%3Cpath%20id=%22_48991608%22%20class=%22fil1%20str1%22%20d=%22M1.989%202.942v-.238%22/%3E%3Cpath%20id=%22_48992000%22%20class=%22fil1%20str1%22%20d=%22M2.228%202.942v-.238%22/%3E%3Cpath%20id=%22_48993336%22%20class=%22fil1%20str1%22%20d=%22M.799%202.942v-.238%22/%3E%3C/g%3E%3Cg%3E%3Cpath%20id=%22_48992272%22%20class=%22fil1%20str1%22%20d=%22M1.036.322V.084%22/%3E%3Cpath%20id=%22_48992496%22%20class=%22fil1%20str1%22%20d=%22M1.275.322V.084%22/%3E%3Cpath%20id=%22_48991232%22%20class=%22fil1%20str1%22%20d=%22M1.751.322V.084%22/%3E%3Cpath%20id=%22_48992176%22%20class=%22fil1%20str1%22%20d=%22M1.513.322V.084%22/%3E%3Cpath%20id=%22_49238248%22%20class=%22fil1%20str1%22%20d=%22M1.989.322V.084%22/%3E%3Cpath%20id=%22_48992904%22%20class=%22fil1%20str1%22%20d=%22M2.227.322V.084%22/%3E%3Cpath%20id=%22_48993160%22%20class=%22fil1%20str1%22%20d=%22M.798.322V.084%22/%3E%3C/g%3E%3Cpath%20id=%22_48993112%22%20d=%22M.87.548h1.286c.177%200%20.321.145.321.322v1.286a.322.322%200%200%201-.321.321H.87a.322.322%200%200%201-.322-.321V.87C.548.693.693.548.87.548z%22%20class=%22fil2%20str2%22/%3E%3Cg%3E%3Cpath%20id=%22_47709808%22%20d=%22M2.341%201.771h-.107c-.046%200-.103-.062-.178-.061-.11.001-.166.108-.272.107-.072-.001-.073-.047-.1-.092h-.068c.02.045.048.144.167.145.12.001.156-.106.272-.106.067%200%20.118.06.18.06h.106V1.77z%22%20class=%22fil3%22/%3E%3Cpath%20id=%22_49237360%22%20d=%22M.729%201.771h.083c.045%200%20.102-.062.178-.061.11.001.166.108.271.107.072-.001.074-.047.1-.092h.069c-.02.045-.048.144-.167.145-.121.001-.156-.106-.272-.106-.067%200-.118.06-.18.06H.729V1.77z%22%20class=%22fil3%22/%3E%3Cpath%20id=%22_47602864%22%20d=%22M1.627%201.471h-.065l-.028-.29c-.002-.015-.01-.014-.01-.014s-.007%200-.008.014l-.028.29h-.065l.038-.315c.01-.076.064-.073.064-.073s.053-.003.064.073l.038.315z%22%20class=%22fil3%22/%3E%3Cpath%20id=%22_48831256%22%20d=%22M.798%201.688c.034%200%20.062-.033.062-.105%200-.041-.008-.102-.061-.102-.046%200-.064.05-.064.104%200%20.046.013.103.063.103zm0-.042c-.01%200-.015-.015-.015-.062%200-.046.006-.062.016-.062s.012.02.012.062c0%20.045-.003.062-.012.062zm.123.039h.047v-.202H.926l-.048.024.008.037.034-.016v.157zm.153.003c.034%200%20.061-.033.061-.105%200-.041-.008-.102-.06-.102-.046%200-.064.05-.064.104%200%20.046.013.103.062.103zm0-.042c-.01%200-.016-.015-.015-.062%200-.046.005-.062.015-.062.01%200%20.013.02.013.062%200%20.045-.003.062-.013.062zm.122.039h.048v-.202H1.2l-.048.024.008.037.035-.016v.157zm.153.003c.034%200%20.062-.033.062-.105%200-.041-.008-.102-.061-.102-.046%200-.063.05-.063.104%200%20.046.013.103.062.103zm0-.042c-.01%200-.015-.015-.014-.062%200-.046.005-.062.015-.062.01%200%20.013.02.013.062%200%20.045-.003.062-.013.062zm.123.039h.047v-.202h-.042l-.048.024.008.037.034-.016v.157zm.153.003c.034%200%20.061-.033.061-.105%200-.041-.007-.102-.06-.102-.046%200-.064.05-.064.104%200%20.046.013.103.063.103zm0-.042c-.01%200-.015-.015-.015-.062%200-.046.006-.062.016-.062s.012.02.012.062c0%20.045-.003.062-.012.062zm.123.039h.047v-.202h-.042l-.048.024.008.037.034-.016v.157zm.153.003c.033%200%20.061-.033.061-.105%200-.041-.008-.102-.06-.102-.046%200-.064.05-.064.104%200%20.046.013.103.062.103zm0-.042c-.01%200-.016-.015-.015-.062%200-.046.005-.062.015-.062.01%200%20.013.02.013.062%200%20.045-.003.062-.013.062zm.122.039h.048v-.202h-.043l-.048.024.008.037.035-.016v.157zm.153.003c.034%200%20.062-.033.062-.105%200-.041-.008-.102-.061-.102-.046%200-.063.05-.063.104%200%20.046.013.103.062.103zm0-.042c-.01%200-.015-.015-.014-.062%200-.046.005-.062.015-.062.01%200%20.013.02.013.062%200%20.045-.003.062-.013.062zm.123.039h.047v-.202h-.042l-.048.024.008.037.034-.016v.157z%22%20class=%22fil4%22/%3E%3C/g%3E%3C/g%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "dde68840-9370-48ec-9b72-62fef03756f7",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -16,
                "y": -72
              }
            },
            {
              "id": "91f10cfc-fafb-47c1-88ee-127b10bca7bf",
              "type": "basic.output",
              "data": {
                "name": "data",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 1360,
                "y": 80
              }
            },
            {
              "id": "cedb3583-19c2-429e-a3e4-7e71f72b1e73",
              "type": "basic.input",
              "data": {
                "name": "SDA",
                "clock": false
              },
              "position": {
                "x": 56,
                "y": 112
              }
            },
            {
              "id": "fbf9ec95-d00e-4bae-8016-bf9044ad4b3c",
              "type": "basic.input",
              "data": {
                "name": "start",
                "clock": false
              },
              "position": {
                "x": 1120,
                "y": 816
              }
            },
            {
              "id": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5",
              "type": "basic.output",
              "data": {
                "name": "SCL"
              },
              "position": {
                "x": 1072,
                "y": 936
              }
            },
            {
              "id": "80d04c3a-039f-439a-aa8b-d2f23f9ce3ef",
              "type": "basic.constant",
              "data": {
                "name": "ADDR",
                "value": "7'b1001000",
                "local": true
              },
              "position": {
                "x": -88,
                "y": 152
              }
            },
            {
              "id": "25411a3a-9079-4264-8ee7-be466dae70bb",
              "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
              "position": {
                "x": 64,
                "y": 672
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
              "type": "a750489117f7e24590a9148d68db6b3228be8a08",
              "position": {
                "x": -88,
                "y": 312
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "cefba7a3-90d2-4a57-8b1f-339495652020",
              "type": "basic.code",
              "data": {
                "code": "parameter  BUS_CLK_400  = 400_000;\nparameter  BUS_CLK_100  = 100_000;\nparameter  CLK_FREQ = 12_000_000;  //-- 100_000_000 Initial value\nlocalparam DIVIDER_400  = (CLK_FREQ/BUS_CLK_400/4);\nlocalparam DIVIDER_100  = (CLK_FREQ/BUS_CLK_100/4);\n\nlocalparam IDLE      = 4'b0000;\nlocalparam START     = 4'b0001;\nlocalparam COMMAND   = 4'b0010;\nlocalparam SLV_ACK1  = 4'b0011;\nlocalparam WR        = 4'b0100;\nlocalparam RD        = 4'b0101;\nlocalparam SLV_ACK2  = 4'b0110;\nlocalparam MSTR_ACK  = 4'b0111;\nlocalparam STOP      = 4'b1000;\n\nreg [3:0] state = IDLE;\nreg       stretch;\nreg [9:0] count;\nreg [9:0] pre_div;\nreg       ack_error;\nreg       data_clk;\nreg       data_clk_prev;\nwire      scl_in;\nreg       scl_clk;\nreg       scl_enable = 0;\nwire      sda_in;\nwire       sda_enable;\nreg       sda_int = 1'b1;\nreg [7:0] data_rx;\nreg [3:0] bit_cnt = 4'h7;\nreg [7:0] data_tx;\nreg [7:0] addr_rw;\n\n\n\nreg busy;\nreg [7:0] data_rd;\n\n\nalways @ (posedge clk or posedge rst)\nbegin\n    if (rst) begin\n        stretch <= 0;\n        count <= 0;\n    end else begin\n        data_clk_prev <= data_clk;\n\n        if (fast_mode)\n            pre_div <= DIVIDER_400;\n        else\n            pre_div <= DIVIDER_100;\n\n        if (count == pre_div*4-1) begin\n            count <= 0;\n        end else if (stretch == 1'b0) begin\n            count <= count + 1;\n        end\n\n        if (count > 0 && count <= pre_div-1) begin\n            scl_clk <= 1'b0;\n            data_clk <= 1'b0;\n        end else if (count >= pre_div && count <= pre_div*2-1) begin\n            scl_clk <= 1'b0;\n            data_clk <= 1'b1;\n        end else if (count >= pre_div*2 && count <= pre_div*3-1) begin\n            scl_clk <= 1'b1;\n            if (scl_in == 1'b0)\n                stretch <= 1'b1;\n            else\n                stretch <= 1'b0;\n            data_clk <= 1'b1;\n        end else begin\n            scl_clk <= 1'b1;\n            data_clk <= 1'b0;\n        end\n    end\nend\n\nalways @ (posedge clk or posedge rst)\nbegin\n    if (rst) begin\n        busy <= 1'b0;\n        scl_enable <= 1'b0;\n        sda_int <= 1'b1;\n        ack_error <= 1'b0;\n        bit_cnt <= 4'h7;\n        state <= IDLE;\n        data_rd <= 8'b00000000;\n    end else begin\n        if (data_clk == 1'b1 && data_clk_prev == 1'b0) begin\n            case (state)\n                IDLE: begin\n                    if (enable == 1'b1) begin\n                        busy <= 1'b1;\n                        addr_rw <= {addr, rw};\n                        state <= START;\n                    end else begin\n                        busy <= 1'b0;\n                        state <= IDLE;\n                    end\n                end\n\n                START: begin\n                    busy <= 1'b1;\n                    sda_int <= addr_rw[bit_cnt];\n                    state <= COMMAND;\n                end\n\n                COMMAND: begin\n                    if (bit_cnt == 4'b0000) begin\n                        sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        state<= SLV_ACK1;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        sda_int <= addr_rw[bit_cnt-1];\n                        state <= COMMAND;\n                    end\n                end\n\n                SLV_ACK1: begin\n                    if (addr_rw[0] == 1'b0) begin\n                        sda_int <= data_tx[bit_cnt];\n                        state <= WR;\n                        data_tx <= data_wr;\n                    end else begin\n                        sda_int <= 1'b1;\n                        state <= RD;\n                    end\n                end\n\n                WR: begin\n                    if (bit_cnt == 4'b0000) begin\n                        sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        state <= SLV_ACK2;\n                        busy <= 1'b0;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        sda_int <= data_tx[bit_cnt-1];\n                        state <= WR;\n                        busy <= 1'b1;\n                    end\n                end\n\n                RD: begin\n                    if (bit_cnt == 4'b0000) begin\n                        if (enable == 1'b1 && addr_rw == {addr, rw})\n                            sda_int <= 1'b0;\n                        else\n                            sda_int <= 1'b1;\n                        bit_cnt <= 4'h7;\n                        data_rd <= data_rx;\n                        state <= MSTR_ACK;\n                        busy <= 1'b0;\n                    end else begin\n                        bit_cnt <= bit_cnt - 1;\n                        state <= RD;\n                        busy <= 1'b1;\n                    end\n                end\n\n                SLV_ACK2: begin\n                    if (enable == 1'b1) begin\n                        addr_rw <= {addr, rw};\n                        data_tx <= data_wr;\n                        if (addr_rw == {addr, rw}) begin\n                            sda_int <= data_wr[bit_cnt];\n                            state <= WR;\n                        end else begin\n                            state <= START;\n                        end\n                    end else begin\n                        state <= STOP;\n                    end\n                end\n\n                MSTR_ACK: begin\n                    if (enable == 1'b1) begin\n                        addr_rw <= {addr, rw};\n                        data_tx <= data_wr;\n                        if (addr_rw == {addr, rw}) begin\n                            sda_int <= 1'b1;\n                            state <= RD;\n                        end else begin\n                            state <= START;\n                        end\n                    end else begin\n                        state <= STOP;\n                    end\n                end\n\n                STOP: begin\n                    busy <= 1'b0;\n                    state <= IDLE;\n                end\n\n            endcase\n        end else if (data_clk == 1'b0 && data_clk_prev == 1'b1) begin\n            case (state)\n                START: begin\n                    if (scl_enable == 1'b0) begin\n                        scl_enable <= 1'b1;\n                        ack_error <= 1'b0;\n                    end\n                end\n\n                SLV_ACK1: begin\n                    if (sda_in != 1'b0 || ack_error == 1'b1)\n                        ack_error <= 1'b1;\n                end\n\n                RD: begin\n                    data_rx[bit_cnt] <= sda_in;\n                end\n\n                SLV_ACK2: begin\n                    if (sda_in != 1'b0 || ack_error == 1'b1)\n                        ack_error <= 1'b1;\n                end\n\n                STOP: begin\n                    scl_enable <= 1'b0;\n                end\n            endcase\n        end\n    end\nend\n\nassign sda_enable = (state == START) ? data_clk_prev :\n                    (state == STOP) ? !data_clk_prev : sda_int;\n                    \nassign ready = (state == IDLE);\n\n//Tri-State buffer controll\nSB_IO # (\n    .PIN_TYPE(6'b1010_01),\n    .PULLUP(1'b0)\n) scl_io (\n    .PACKAGE_PIN(scl),\n    .OUTPUT_ENABLE(scl_enable == 1'b1 && scl_clk == 1'b0),\n    .D_OUT_0(1'b0),\n    .D_IN_0(scl_in)\n);\n\n//Tri-State buffer controll\nSB_IO # (\n    .PIN_TYPE(6'b1010_01),\n    .PULLUP(1'b0)\n) sda_io (\n    .PACKAGE_PIN(sda),\n    .OUTPUT_ENABLE(sda_enable == 1'b0),\n    .D_OUT_0(1'b0),\n    .D_IN_0(sda_in)\n);\n\nassign scl2 = scl_in;\nassign sda2 = sda_in;\n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "rst"
                    },
                    {
                      "name": "sda"
                    },
                    {
                      "name": "enable"
                    },
                    {
                      "name": "addr",
                      "range": "[6:0]",
                      "size": 7
                    },
                    {
                      "name": "rw"
                    },
                    {
                      "name": "data_wr",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "fast_mode"
                    }
                  ],
                  "out": [
                    {
                      "name": "busy"
                    },
                    {
                      "name": "ack_error"
                    },
                    {
                      "name": "data_rd",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "ready"
                    },
                    {
                      "name": "scl"
                    },
                    {
                      "name": "scl2"
                    },
                    {
                      "name": "sda2"
                    }
                  ]
                }
              },
              "position": {
                "x": 296,
                "y": -8
              },
              "size": {
                "width": 656,
                "height": 576
              }
            },
            {
              "id": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
              "type": "basic.code",
              "data": {
                "code": "\n\nlocalparam IDLE = 4'b0000;\nlocalparam WR1 = 4'b0001;\nlocalparam WR2 = 4'b0010;\nlocalparam WR3 = 4'b0011;\nlocalparam RD2 = 4'b0100;\nlocalparam IDLE2 = 4'b0101;\nlocalparam s2_WR1 = 4'b0110;\nlocalparam s2_WR2 = 4'b0111;\nlocalparam s2_RD1 = 4'b1000;\nlocalparam s2_RD2 = 4'b1001;\n\n\n//-- Control signals\nreg enable = 0;\nreg rw = 0;\nreg [7:0] data;\n\n//-- fsm states\nreg [3:0] state = IDLE;\nreg [3:0] next_state = IDLE;\n\n//-- Transition between states\nalways @(posedge clk)\n    state <= next_state;\n    \n//-- Control signal generation and next states\nalways @(*) begin\n\n  //-- Default values\n  next_state = state;      //-- Stay in the same state by default\n  enable = 0;\n  rw = 0;\n  data = 8'h00;\n  \n case(state)\n\n    //-- Idle state\n    //-- Remain in this state until the start is activated\n    IDLE: begin\n        next_state = WR1;\n    end\n\n    //-- Writting 1 state\n    //-- The writting phase is started\n    //-- Remains in this state until ready is 0 \n    WR1: begin\n      enable = 1;\n      if (busy == 1)\n        next_state = WR2;\n    end\n\n    //-- Writting 2 phase: Seleccting the Reg 0x01 by writting 0x01\n    //-- Wait until ready is 1\n    WR2: begin\n      enable = 1;\n      \n      if (busy == 0)\n        next_state = WR3;\n    end\n\n    //-- Reading 1: Prepare for reading the reg 0x01\n    //-- Wait until ready is 0\n    WR3: begin\n      enable = 1;\n      data = 8'hC4;\n      if (busy == 1)\n        next_state = IDLE2;\n    end\n    \n    //-- Idle state\n    //-- Remain in this state until the start is activated\n    IDLE2: begin\n      data = 8'h2;\n      if (start == 1)\n        next_state = s2_WR1;\n    end\n\n    //-- Writting 1 state\n    //-- The writting phase is started\n    //-- Remains in this state until ready is 0 \n    s2_WR1: begin\n      enable = 1;\n      data = 8'h2;\n      rw = 0;\n      if (ready == 0)\n        next_state = s2_WR2;\n    end\n\n    //-- Writting 2 phase: Seleccting the Reg 0x01 by writting 0x01\n    //-- Wait until ready is 1\n    s2_WR2: begin\n      data = 8'h2;\n      if (ready == 1)\n        next_state = s2_RD1;\n    end\n\n    //-- Reading 1: Prepare for reading the reg 0x01\n    //-- Wait until ready is 0\n    s2_RD1: begin\n      enable = 1;\n      rw = 1;\n      data = 8'h2;\n      if (ready == 0)\n        next_state = s2_RD2;\n    end\n    \n    //-- Reading 2: Read the 0x01 register\n    //-- Wait until ready is 1\n    s2_RD2: begin\n      data = 8'h2;\n      rw = 1;\n      if (ready == 1)\n        next_state = IDLE2;\n    end\n    \n\n    default: begin\n      enable = 0;\n      rw = 0;\n    end\n\n  endcase \n  \n  \nend\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "busy"
                    },
                    {
                      "name": "ready"
                    },
                    {
                      "name": "start"
                    }
                  ],
                  "out": [
                    {
                      "name": "enable"
                    },
                    {
                      "name": "data",
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "rw"
                    }
                  ]
                }
              },
              "position": {
                "x": 1320,
                "y": 328
              },
              "size": {
                "width": 720,
                "height": 592
              }
            },
            {
              "id": "52d7bcc1-e2cd-4991-b9c4-5b44cb856aa5",
              "type": "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542",
              "position": {
                "x": 64,
                "y": 32
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cedb3583-19c2-429e-a3e4-7e71f72b1e73",
                "port": "out"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "sda"
              },
              "vertices": [
                {
                  "x": 184,
                  "y": 176
                }
              ]
            },
            {
              "source": {
                "block": "25411a3a-9079-4264-8ee7-be466dae70bb",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "fast_mode"
              }
            },
            {
              "source": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "data_rd"
              },
              "target": {
                "block": "91f10cfc-fafb-47c1-88ee-127b10bca7bf",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "80d04c3a-039f-439a-aa8b-d2f23f9ce3ef",
                "port": "constant-out"
              },
              "target": {
                "block": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            },
            {
              "source": {
                "block": "2ee844e8-200f-4a80-8330-26cdcc9c6394",
                "port": "78bc33e5-9309-4ca6-96b2-f6f35df3a477"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "addr"
              },
              "size": 7
            },
            {
              "source": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "scl"
              },
              "target": {
                "block": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "rw"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "rw"
              },
              "vertices": [
                {
                  "x": 2080,
                  "y": 1048
                },
                {
                  "x": 208,
                  "y": 1064
                }
              ]
            },
            {
              "source": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "enable"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "enable"
              },
              "vertices": [
                {
                  "x": 2136,
                  "y": 1168
                },
                {
                  "x": -112,
                  "y": 1216
                }
              ]
            },
            {
              "source": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "ready"
              },
              "target": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "ready"
              },
              "vertices": [
                {
                  "x": 1176,
                  "y": 480
                }
              ]
            },
            {
              "source": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "busy"
              },
              "target": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "busy"
              },
              "vertices": [
                {
                  "x": 1200,
                  "y": 232
                }
              ]
            },
            {
              "source": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "data"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "data_wr"
              },
              "vertices": [
                {
                  "x": 2104,
                  "y": 1144
                },
                {
                  "x": 16,
                  "y": 1096
                }
              ],
              "size": 8
            },
            {
              "source": {
                "block": "fbf9ec95-d00e-4bae-8016-bf9044ad4b3c",
                "port": "out"
              },
              "target": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "start"
              }
            },
            {
              "source": {
                "block": "52d7bcc1-e2cd-4991-b9c4-5b44cb856aa5",
                "port": "3d584b0a-29eb-47af-8c43-c0822282ef05"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "dde68840-9370-48ec-9b72-62fef03756f7",
                "port": "out"
              },
              "target": {
                "block": "cefba7a3-90d2-4a57-8b1f-339495652020",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "dde68840-9370-48ec-9b72-62fef03756f7",
                "port": "out"
              },
              "target": {
                "block": "d8292cdc-7e3e-4d24-a29a-e8883d303988",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "21cfcc19a4ad14c5fb5e8cfebd018ec356fe7542": {
      "package": {
        "name": "0",
        "version": "0.1",
        "description": "Un bit constante a 0",
        "author": "Jesus Arroyo",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2233.563%22%20height=%2257.469%22%20viewBox=%220%200%2031.465601%2053.876499%22%3E%3Cpath%20d=%22M21.822%2032.843l4.092%208.992-3.772%209.727%204.181%201.31m-12.967-19.26s-1.091%208.253-2.585%208.919C9.278%2043.198%201%2049.389%201%2049.389l2.647%203.256%22%20fill=%22none%22%20stroke=%22green%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-.863%22%20y=%2230.575%22%20transform=%22scale(.90756%201.10186)%22%20font-weight=%22400%22%20font-size=%2254.594%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22green%22%3E%3Ctspan%20x=%22-.863%22%20y=%2230.575%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold%20Italic'%22%20font-style=%22italic%22%20font-weight=%22700%22%3Eo%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "3d584b0a-29eb-47af-8c43-c0822282ef05",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 160
              }
            },
            {
              "id": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
              "type": "basic.code",
              "data": {
                "code": "//-- Bit constante a 0\nassign q = 1'b0;\n\n",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "q"
                    }
                  ]
                }
              },
              "position": {
                "x": 168,
                "y": 112
              },
              "size": {
                "width": 256,
                "height": 160
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "61331ec5-2c56-4cdd-b607-e63b1502fa65",
                "port": "q"
              },
              "target": {
                "block": "3d584b0a-29eb-47af-8c43-c0822282ef05",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "a750489117f7e24590a9148d68db6b3228be8a08": {
      "package": {
        "name": "Constante-7bits",
        "version": "0.0.1",
        "description": "Valor constante generico para bus de 7 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.997%22%20height=%2230.109%22%20viewBox=%220%200%2044.997735%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%223.746%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%223.746%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E7%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "78bc33e5-9309-4ca6-96b2-f6f35df3a477",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[6:0]",
                "size": 7
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "7'h00",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[6:0]",
                      "size": 7
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "78bc33e5-9309-4ca6-96b2-f6f35df3a477",
                "port": "in"
              },
              "size": 7
            }
          ]
        }
      }
    },
    "9145319126ac1b81ea15f1e8187601adec774394": {
      "package": {
        "name": "Corazon_4Hz",
        "version": "0.1",
        "description": "Bombear 4 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E4Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "95281825-5850-408d-9040-93866452f146",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 328,
                "y": 264
              }
            },
            {
              "id": "7fbb0c58-cf32-4b7c-a563-4ca90483b38a",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 0,
                "y": 264
              }
            },
            {
              "id": "e5fa97d8-48f3-476e-869d-db06a7129fbb",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "4",
                "local": true
              },
              "position": {
                "x": 176,
                "y": 144
              }
            },
            {
              "id": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 176,
                "y": 264
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "43040f78-9e91-4e32-af92-9f3f1a47ee35",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": -32,
                "y": 56
              },
              "size": {
                "width": 320,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "95281825-5850-408d-9040-93866452f146",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "7fbb0c58-cf32-4b7c-a563-4ca90483b38a",
                "port": "out"
              },
              "target": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "e5fa97d8-48f3-476e-869d-db06a7129fbb",
                "port": "constant-out"
              },
              "target": {
                "block": "a5871f1a-81de-44d4-a5f5-68d16db8c8c8",
                "port": "319cdca8-e777-4c8b-88ca-f885ba96ad06"
              },
              "vertices": []
            }
          ]
        }
      }
    },
    "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c": {
      "package": {
        "name": "Corazon_Hz",
        "version": "0.1",
        "description": "Corazon genérico para bombear bits a la frecuencia fijada en Hz (por defecto 1Hz)",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22177.215%22%20height=%22156.392%22%20viewBox=%220%200%20166.13943%20146.61829%22%3E%3Cpath%20d=%22M78.495%20143.399c-2.574-4.43-6.565-8.766-14.127-15.35-4.096-3.566-6.588-5.546-20.775-16.506-11.12-8.593-16.668-13.36-23.098-19.847C14.07%2085.208%2010.293%2080.04%207.052%2073.303%204.984%2069%203.562%2064.854%202.676%2060.547c-1.123-5.472-1.275-7.324-1.27-15.382.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.536-5.85%2012.1-8.6%206.18-3.057%2010.65-3.859%2019.86-3.562%207.157.232%209.776.943%2015.45%204.208%208.929%205.138%2015.858%2013.387%2017.776%2021.162.313%201.27.636%202.312.719%202.312.082%200%20.805-1.487%201.606-3.305%202.727-6.179%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.402%2014.298-2.214%2024.207-9.174%2034.766-2.763%204.19-4.806%206.73-8.638%2010.73-6.182%206.458-11.758%2011.205-24.92%2021.216-8.307%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.558%2014.1-15.41%2015.596-.372.655-.71%201.189-.749%201.189-.039%200-.544-.815-1.124-1.813z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.183%22%20x=%22124.113%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.183%22%20x=%22124.113%22%20font-weight=%22700%22%20font-size=%2230.808%22%3EHz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 560,
                "y": 128
              }
            },
            {
              "id": "4656865c-bcf1-4668-8e13-9221e32222d3",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -296,
                "y": 128
              }
            },
            {
              "id": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
              "type": "basic.constant",
              "data": {
                "name": "",
                "value": "1",
                "local": false
              },
              "position": {
                "x": 112,
                "y": -224
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//parameter HZ=1;\n\n//-- Constante para dividir y obtener una frecuencia de 1Hz\nlocalparam M = 12000000/HZ;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\n//-- Temporal clock\nreg clk_t = 0;\n\n//-- Se usa un contador modulo M/2 para luego\n//-- pasarlo por un biestable T y dividir la frecuencia\n//-- entre 2, para que el ciclo de trabajo sea del 50%\nalways @(posedge clk)\n    if (divcounter == M/2) begin\n      clk_t <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_t = 0;\n    end \n  \nreg clk_o = 0;  \n    \n//-- Biestable T para obtener ciclo de trabajo del 50%\nalways @(posedge clk)\n  if (clk_t)\n    clk_o <= ~clk_o;\n",
                "params": [
                  {
                    "name": "HZ"
                  }
                ],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_o"
                    }
                  ]
                }
              },
              "position": {
                "x": -104,
                "y": -104
              },
              "size": {
                "width": 528,
                "height": 528
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_o"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "4656865c-bcf1-4668-8e13-9221e32222d3",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "319cdca8-e777-4c8b-88ca-f885ba96ad06",
                "port": "constant-out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "HZ"
              }
            }
          ]
        }
      }
    },
    "4ad9edf034ff368c7fec5a75bb0952c46e455a22": {
      "package": {
        "name": "Corazon_2Hz",
        "version": "0.1",
        "description": "Generacion de pulsos a una frecuencia de 2Hz. El ancho del pulso es el del reloj del sistema",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22102.828%22%20height=%2286.688%22%20viewBox=%220%200%2096.401625%2081.269872%22%3E%3Cpath%20d=%22M43.573%2078.685c-1.401-2.404-3.574-4.758-7.691-8.332-2.23-1.936-3.588-3.012-11.312-8.961-6.055-4.665-9.076-7.253-12.576-10.775-3.499-3.522-5.556-6.327-7.32-9.985-1.126-2.336-1.9-4.586-2.383-6.925-.61-2.97-.694-3.976-.69-8.35.003-5.74.193-6.695%202.083-10.524%201.405-2.844%202.472-4.342%204.694-6.591%202.157-2.184%203.558-3.176%206.587-4.669%203.366-1.66%205.8-2.095%2010.814-1.934%203.897.126%205.323.512%208.412%202.285%204.862%202.79%208.634%207.267%209.679%2011.488.17.69.346%201.255.391%201.255.045%200%20.439-.807.875-1.794C46.62%2011.52%2048%209.472%2050.19%207.366%2056.899.917%2067.475-.249%2076.026%204.516c3.493%201.946%206.334%204.779%208.536%208.51%201.733%202.936%202.62%206.837%202.771%2012.195.219%207.762-1.205%2013.141-4.995%2018.874-1.504%202.275-2.617%203.653-4.703%205.825-3.366%203.506-6.402%206.083-13.57%2011.517-4.522%203.43-7.202%205.635-11.082%209.12-3.109%202.793-7.926%207.655-8.39%208.468-.203.355-.386.645-.408.645-.02%200-.296-.443-.612-.985z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223.2%22/%3E%3Ctext%20y=%22560.353%22%20x=%22376.562%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.312%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20transform=%22translate(-314.789%20-483.156)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22560.353%22%20x=%22376.562%22%20font-weight=%22700%22%20font-size=%2216.75%22%3E2Hz%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.714%2055.734h8.215V22.163h10.357v33.571h8.571%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "784096db-1486-4ba8-a81b-59f5ecceebd9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 72,
                "y": 1152
              }
            },
            {
              "id": "ce7fb604-b084-4d45-afcb-7ff774e05213",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 680,
                "y": 1248
              }
            },
            {
              "id": "48053d6d-d466-42fc-a419-da0abb674b30",
              "type": "07a9dfbbf63b873bd79d7a2dce1cb0a8e04e0a7e",
              "position": {
                "x": 488,
                "y": 1248
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "71d0575d-5e78-4e5c-aef6-175154868ffc",
              "type": "aca928353fdc282ba01b19536be85faf97cf8e53",
              "position": {
                "x": 264,
                "y": 1344
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "e3f9cf94-84ef-4147-be37-26099ad16e79",
              "type": "basic.info",
              "data": {
                "info": "Generador de pulsos de 2Hz\n\n12Mhz / 6.000.000 = 2Hz\n\nSe utiliza un contador módulo M = 6.000.000\n\nCuando el contador llega a 6 millones, se activa su señal de \nsalida y el contador se resetea. Esa misma señal es la que se\nusa como pulso de salida",
                "readonly": true
              },
              "position": {
                "x": 64,
                "y": 952
              },
              "size": {
                "width": 496,
                "height": 160
              }
            },
            {
              "id": "e720c236-291e-42c9-b80c-4b628284b73c",
              "type": "basic.info",
              "data": {
                "info": "Constante 6 millones",
                "readonly": true
              },
              "position": {
                "x": 224,
                "y": 1312
              },
              "size": {
                "width": 176,
                "height": 32
              }
            },
            {
              "id": "e3c4b898-473c-425b-ae82-8673680b1d6b",
              "type": "basic.info",
              "data": {
                "info": "Señal de reset para el contador",
                "readonly": true
              },
              "position": {
                "x": 216,
                "y": 1448
              },
              "size": {
                "width": 272,
                "height": 48
              }
            },
            {
              "id": "1012a616-88b0-4e39-aa34-e018523a8aef",
              "type": "6b0e27812fd33e36a3faacd2a4ad17512cf6e6ff",
              "position": {
                "x": 272,
                "y": 1232
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "71d0575d-5e78-4e5c-aef6-175154868ffc",
                "port": "04cdc10a-69e6-4969-83d7-2ad1d0f02119"
              },
              "target": {
                "block": "48053d6d-d466-42fc-a419-da0abb674b30",
                "port": "c96df0b7-d3f2-4547-9c4b-b9f7444a7531"
              },
              "size": 23
            },
            {
              "source": {
                "block": "48053d6d-d466-42fc-a419-da0abb674b30",
                "port": "a00c46bf-380f-4964-98c7-ba2f75337396"
              },
              "target": {
                "block": "ce7fb604-b084-4d45-afcb-7ff774e05213",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "1012a616-88b0-4e39-aa34-e018523a8aef",
                "port": "b74b10dd-96a5-42e5-8372-f6a0eff8b81b"
              },
              "target": {
                "block": "48053d6d-d466-42fc-a419-da0abb674b30",
                "port": "eeff0633-4fcb-49dd-b366-fbbfd30a5f57"
              },
              "size": 23
            },
            {
              "source": {
                "block": "784096db-1486-4ba8-a81b-59f5ecceebd9",
                "port": "out"
              },
              "target": {
                "block": "1012a616-88b0-4e39-aa34-e018523a8aef",
                "port": "c84d81de-261a-469b-91ac-868551137e94"
              }
            },
            {
              "source": {
                "block": "48053d6d-d466-42fc-a419-da0abb674b30",
                "port": "a00c46bf-380f-4964-98c7-ba2f75337396"
              },
              "target": {
                "block": "1012a616-88b0-4e39-aa34-e018523a8aef",
                "port": "4d41811f-a373-47d4-8e80-23b64aed2b69"
              },
              "vertices": [
                {
                  "x": 616,
                  "y": 1424
                },
                {
                  "x": 184,
                  "y": 1440
                }
              ]
            }
          ]
        }
      }
    },
    "07a9dfbbf63b873bd79d7a2dce1cb0a8e04e0a7e": {
      "package": {
        "name": "Comparador-8bits",
        "version": "0.1",
        "description": "Comparador de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22162.426%22%20height=%2289.975%22%20viewBox=%220%200%20152.27428%2084.35117%22%3E%3Cg%20font-weight=%22400%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22158.092%22%20y=%22472.377%22%20font-size=%22145.87%22%20fill=%22#00f%22%20transform=%22translate(-145.793%20-367.015)%22%3E%3Ctspan%20x=%22158.092%22%20y=%22472.377%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E=%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22144.689%22%20y=%22383.85%22%20font-size=%2222.158%22%20transform=%22translate(-145.793%20-367.015)%22%3E%3Ctspan%20x=%22144.689%22%20y=%22383.85%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EComparador%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "eeff0633-4fcb-49dd-b366-fbbfd30a5f57",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": 160,
                "y": 200
              }
            },
            {
              "id": "a00c46bf-380f-4964-98c7-ba2f75337396",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 224
              }
            },
            {
              "id": "c96df0b7-d3f2-4547-9c4b-b9f7444a7531",
              "type": "basic.input",
              "data": {
                "name": "b",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": 160,
                "y": 272
              }
            },
            {
              "id": "498072a7-61ad-4332-90ee-8d0efd5657c6",
              "type": "basic.code",
              "data": {
                "code": "\nassign eq = (a == b);",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a",
                      "range": "[22:0]",
                      "size": 23
                    },
                    {
                      "name": "b",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ],
                  "out": [
                    {
                      "name": "eq"
                    }
                  ]
                }
              },
              "position": {
                "x": 384,
                "y": 200
              },
              "size": {
                "width": 272,
                "height": 112
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "498072a7-61ad-4332-90ee-8d0efd5657c6",
                "port": "eq"
              },
              "target": {
                "block": "a00c46bf-380f-4964-98c7-ba2f75337396",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "eeff0633-4fcb-49dd-b366-fbbfd30a5f57",
                "port": "out"
              },
              "target": {
                "block": "498072a7-61ad-4332-90ee-8d0efd5657c6",
                "port": "a"
              },
              "size": 23
            },
            {
              "source": {
                "block": "c96df0b7-d3f2-4547-9c4b-b9f7444a7531",
                "port": "out"
              },
              "target": {
                "block": "498072a7-61ad-4332-90ee-8d0efd5657c6",
                "port": "b"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "aca928353fdc282ba01b19536be85faf97cf8e53": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22110.427%22%20height=%2230.37%22%20viewBox=%220%200%20103.52557%2028.47232%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-.178%22%20y=%2213.79%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-.178%22%20y=%2213.79%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E6.000.000%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.026%22%20y=%2228.289%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.026%22%20y=%2228.289%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E23%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "04cdc10a-69e6-4969-83d7-2ad1d0f02119",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "5e87f688-17ec-4faf-af1c-dde5107a2f06",
              "type": "basic.code",
              "data": {
                "code": "localparam M = 6000000;\n\nassign o = M-1;",
                "params": [],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "o",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": 624,
                "y": 240
              },
              "size": {
                "width": 240,
                "height": 80
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "5e87f688-17ec-4faf-af1c-dde5107a2f06",
                "port": "o"
              },
              "target": {
                "block": "04cdc10a-69e6-4969-83d7-2ad1d0f02119",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "6b0e27812fd33e36a3faacd2a4ad17512cf6e6ff": {
      "package": {
        "name": "Contador-23",
        "version": "0.1",
        "description": "Contador ascendente de 23bits, con reset síncrono",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22171.065%22%20height=%2296.212%22%20viewBox=%220%200%20160.37347%2090.198967%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4l3.46%202z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.4pt%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-184.027%20-303.944)%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22207.352%22%20y=%22319.139%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22207.352%22%20y=%22319.139%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EContador%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M329.801%20388.969V343.75%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22229.67%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22247.059%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22247.059%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M231.168%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22185.027%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22199.826%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22199.826%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M186.525%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "c84d81de-261a-469b-91ac-868551137e94",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -272,
                "y": 64
              }
            },
            {
              "id": "b74b10dd-96a5-42e5-8372-f6a0eff8b81b",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 704,
                "y": 248
              }
            },
            {
              "id": "4d41811f-a373-47d4-8e80-23b64aed2b69",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": -272,
                "y": 256
              }
            },
            {
              "id": "c9348860-5bc6-4685-8a11-b43ef0c55ea5",
              "type": "8adc3f64c5280fe0d5d736b607246b0a694a2c70",
              "position": {
                "x": 264,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "dfb6d2f6-5db9-442a-acaa-e517d101bb6b",
              "type": "bfd6d454679cc6ccc23cd21c48fd394f6b9b8c73",
              "position": {
                "x": 528,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "2a252531-41ba-4f87-bb47-9ce5c1827533",
              "type": "620afb958af2c83fa1b5fe18cef26b9b60459dc3",
              "position": {
                "x": -160,
                "y": 176
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6e9bfa84-56bb-4387-bb10-c1f272305a45",
              "type": "2a138ea36662f00692e2cd1b9783987cf99361dd",
              "position": {
                "x": 56,
                "y": 160
              },
              "size": {
                "width": 96,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c9348860-5bc6-4685-8a11-b43ef0c55ea5",
                "port": "a445a716-90f7-4a43-93df-3d7d7ba59fe9"
              },
              "target": {
                "block": "dfb6d2f6-5db9-442a-acaa-e517d101bb6b",
                "port": "7ae0a72b-68cf-4779-b190-9c451d861b3d"
              },
              "size": 23
            },
            {
              "source": {
                "block": "6e9bfa84-56bb-4387-bb10-c1f272305a45",
                "port": "1493adb9-c0a4-492b-b8be-584460f86079"
              },
              "target": {
                "block": "c9348860-5bc6-4685-8a11-b43ef0c55ea5",
                "port": "6ab77e48-1bf4-4a38-bc51-b175d4eaa68d"
              },
              "size": 23
            },
            {
              "source": {
                "block": "2a252531-41ba-4f87-bb47-9ce5c1827533",
                "port": "11691d39-f387-4d9b-848e-109e6e8c762e"
              },
              "target": {
                "block": "6e9bfa84-56bb-4387-bb10-c1f272305a45",
                "port": "17f079d4-fcaa-4081-8d35-b2a7dacfe7b6"
              },
              "size": 23
            },
            {
              "source": {
                "block": "dfb6d2f6-5db9-442a-acaa-e517d101bb6b",
                "port": "8cbb14c4-96ba-4d48-8a7f-aa7e4c6c14e2"
              },
              "target": {
                "block": "6e9bfa84-56bb-4387-bb10-c1f272305a45",
                "port": "93bf4277-8774-4d86-a7c6-f2fb827b4f67"
              },
              "vertices": [
                {
                  "x": 696,
                  "y": 0
                },
                {
                  "x": -8,
                  "y": 32
                }
              ],
              "size": 23
            },
            {
              "source": {
                "block": "c84d81de-261a-469b-91ac-868551137e94",
                "port": "out"
              },
              "target": {
                "block": "c9348860-5bc6-4685-8a11-b43ef0c55ea5",
                "port": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5"
              }
            },
            {
              "source": {
                "block": "4d41811f-a373-47d4-8e80-23b64aed2b69",
                "port": "out"
              },
              "target": {
                "block": "6e9bfa84-56bb-4387-bb10-c1f272305a45",
                "port": "1e637a79-4a6d-495c-bcac-9664bdbe4b94"
              }
            },
            {
              "source": {
                "block": "c9348860-5bc6-4685-8a11-b43ef0c55ea5",
                "port": "a445a716-90f7-4a43-93df-3d7d7ba59fe9"
              },
              "target": {
                "block": "b74b10dd-96a5-42e5-8372-f6a0eff8b81b",
                "port": "in"
              },
              "vertices": [
                {
                  "x": 408,
                  "y": 280
                }
              ],
              "size": 23
            }
          ]
        }
      }
    },
    "8adc3f64c5280fe0d5d736b607246b0a694a2c70": {
      "package": {
        "name": "Reg23",
        "version": "0.0.1",
        "description": "Registro de 23 bits, inicializado a 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22109.404%22%20height=%2277.949%22%20viewBox=%220%200%20102.56663%2073.076845%22%3E%3Cg%20transform=%22translate(-208.312%20-424.877)%22%3E%3Cpath%20d=%22M288.631%20471.868l4.174%2025.586%205.175-25.586%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22207.303%22%20y=%22444.804%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22207.303%22%20y=%22444.804%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EReg%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22212.366%22%20y=%22480.075%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22212.366%22%20y=%22480.075%22%3E0x00%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M285.771%20459.009l2.192-26.019h-9.014v-4.984h29.214v4.984h-8.514l1.581%2026.254s6.885%201.14%208.499%205.913c1.614%204.774-.337%206.65.138%206.717l-33.08-.04s-.75-5.57%201.848-8.39c2.597-2.82%207.136-4.435%207.136-4.435z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2257.074%22%20height=%2231.82%22%20x=%22209.812%22%20y=%22457.548%22%20ry=%223.018%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%223%22%20stroke-linecap=%22square%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 536,
                "y": 128
              }
            },
            {
              "id": "a445a716-90f7-4a43-93df-3d7d7ba59fe9",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 1088,
                "y": 216
              }
            },
            {
              "id": "6ab77e48-1bf4-4a38-bc51-b175d4eaa68d",
              "type": "basic.input",
              "data": {
                "name": "d",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": 536,
                "y": 240
              }
            },
            {
              "id": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
              "type": "basic.code",
              "data": {
                "code": "reg [22:0] do = 23'h0;\n\nalways @(posedge clk)\n    do <= di;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "di",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ],
                  "out": [
                    {
                      "name": "do",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": 800,
                "y": 200
              },
              "size": {
                "width": 208,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "204b4f2f-b12f-46a8-be1f-de1e14a7d9b5",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 696,
                  "y": 224
                }
              ]
            },
            {
              "source": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "do"
              },
              "target": {
                "block": "a445a716-90f7-4a43-93df-3d7d7ba59fe9",
                "port": "in"
              },
              "size": 23
            },
            {
              "source": {
                "block": "6ab77e48-1bf4-4a38-bc51-b175d4eaa68d",
                "port": "out"
              },
              "target": {
                "block": "3cde35d8-225a-4a66-9595-1711ca0a5fb0",
                "port": "di"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "bfd6d454679cc6ccc23cd21c48fd394f6b9b8c73": {
      "package": {
        "name": "Sum-2-5bits",
        "version": "0.0.1",
        "description": "Sumar 2 al bus de 5 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22100.466%22%20height=%2255.611%22%20viewBox=%220%200%2094.187617%2052.135877%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-7.443%22%20y=%2252.136%22%20font-weight=%22400%22%20font-size=%2270.246%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-7.443%22%20y=%2252.136%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#00f%22%3E+1%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7ae0a72b-68cf-4779-b190-9c451d861b3d",
              "type": "basic.input",
              "data": {
                "name": "i",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": 304,
                "y": 312
              }
            },
            {
              "id": "8cbb14c4-96ba-4d48-8a7f-aa7e4c6c14e2",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 872,
                "y": 312
              }
            },
            {
              "id": "13977eee-1f76-43f5-91a2-68d11428a18c",
              "type": "basic.code",
              "data": {
                "code": "\nassign o = i + 1;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": 480,
                "y": 296
              },
              "size": {
                "width": 304,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "7ae0a72b-68cf-4779-b190-9c451d861b3d",
                "port": "out"
              },
              "target": {
                "block": "13977eee-1f76-43f5-91a2-68d11428a18c",
                "port": "i"
              },
              "size": 23
            },
            {
              "source": {
                "block": "13977eee-1f76-43f5-91a2-68d11428a18c",
                "port": "o"
              },
              "target": {
                "block": "8cbb14c4-96ba-4d48-8a7f-aa7e4c6c14e2",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "620afb958af2c83fa1b5fe18cef26b9b60459dc3": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2219.555%22%20height=%2224.647%22%20viewBox=%220%200%2018.333077%2023.106531%22%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.462%22%20y=%2222.674%22%20font-weight=%22400%22%20font-size=%2230.55%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.462%22%20y=%2222.674%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M6.45%2020.917l5.496-17.753%22%20fill=%22green%22%20stroke=%22green%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "11691d39-f387-4d9b-848e-109e6e8c762e",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 928,
                "y": 256
              }
            },
            {
              "id": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "23'h0",
                "local": true
              },
              "position": {
                "x": 712,
                "y": 128
              }
            },
            {
              "id": "521fa935-30d9-4457-a70f-f29f12d038c7",
              "type": "4d00d2bf44769a154055eb068ea2b40c5259f736",
              "position": {
                "x": 712,
                "y": 256
              },
              "size": {
                "width": 96,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "ad7918eb-22dd-4b6c-949f-e428f5a55530",
                "port": "constant-out"
              },
              "target": {
                "block": "521fa935-30d9-4457-a70f-f29f12d038c7",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            },
            {
              "source": {
                "block": "521fa935-30d9-4457-a70f-f29f12d038c7",
                "port": "04cdc10a-69e6-4969-83d7-2ad1d0f02119"
              },
              "target": {
                "block": "11691d39-f387-4d9b-848e-109e6e8c762e",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "4d00d2bf44769a154055eb068ea2b40c5259f736": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2251.833%22%20height=%2230.109%22%20viewBox=%220%200%2048.593852%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-.178%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-.178%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22-1.026%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.026%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E23%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "04cdc10a-69e6-4969-83d7-2ad1d0f02119",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": 960,
                "y": 248
              }
            },
            {
              "id": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
              "type": "basic.constant",
              "data": {
                "name": "V",
                "value": "23'h0",
                "local": false
              },
              "position": {
                "x": 728,
                "y": 128
              }
            },
            {
              "id": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
              "type": "basic.code",
              "data": {
                "code": "assign k = V;",
                "params": [
                  {
                    "name": "V"
                  }
                ],
                "ports": {
                  "in": [],
                  "out": [
                    {
                      "name": "k",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": 672,
                "y": 248
              },
              "size": {
                "width": 208,
                "height": 64
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            },
            {
              "source": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "04cdc10a-69e6-4969-83d7-2ad1d0f02119",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "2a138ea36662f00692e2cd1b9783987cf99361dd": {
      "package": {
        "name": "Mux 2 a 1 (8bits)",
        "version": "0.0.1",
        "description": "Multiplexor de 2 a 1 de buses de 8 bits",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2290.67%22%20height=%22113.793%22%20viewBox=%220%200%2085.00353%20106.68137%22%3E%3Cpath%20d=%22M66.671%2021.324c0-7.134-3.893-13.724-10.206-17.275a20.674%2020.674%200%200%200-20.365.08c-6.284%203.6-10.124%2010.219-10.066%2017.353v41.836c-.058%207.135%203.782%2013.755%2010.066%2017.355a20.674%2020.674%200%200%200%2020.365.079c6.313-3.55%2010.206-10.14%2010.206-17.275z%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2234.576%22%20y=%2230.222%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2234.576%22%20y=%2230.222%22%3E0%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2233.518%22%20y=%2266.815%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2233.518%22%20y=%2266.815%22%3E1%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2224.905%22%20y=%22106.416%22%20font-weight=%22400%22%20font-size=%2218.75%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%2224.905%22%20y=%22106.416%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EMux%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M26.122%2023.954H1.426M26.122%2059.737H1.426M66.945%2040.082h16.632%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "93bf4277-8774-4d86-a7c6-f2fb827b4f67",
              "type": "basic.input",
              "data": {
                "name": "i0",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": -704,
                "y": -88
              }
            },
            {
              "id": "17f079d4-fcaa-4081-8d35-b2a7dacfe7b6",
              "type": "basic.input",
              "data": {
                "name": "i1",
                "range": "[22:0]",
                "clock": false,
                "size": 23
              },
              "position": {
                "x": -704,
                "y": 0
              }
            },
            {
              "id": "1493adb9-c0a4-492b-b8be-584460f86079",
              "type": "basic.output",
              "data": {
                "name": "o",
                "range": "[22:0]",
                "size": 23
              },
              "position": {
                "x": -48,
                "y": 0
              }
            },
            {
              "id": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
              "type": "basic.input",
              "data": {
                "name": "sel",
                "clock": false
              },
              "position": {
                "x": -704,
                "y": 88
              }
            },
            {
              "id": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
              "type": "basic.code",
              "data": {
                "code": "assign o = (sel) ? i1 : i0;\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "i0",
                      "range": "[22:0]",
                      "size": 23
                    },
                    {
                      "name": "i1",
                      "range": "[22:0]",
                      "size": 23
                    },
                    {
                      "name": "sel"
                    }
                  ],
                  "out": [
                    {
                      "name": "o",
                      "range": "[22:0]",
                      "size": 23
                    }
                  ]
                }
              },
              "position": {
                "x": -464,
                "y": -104
              },
              "size": {
                "width": 304,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "1e637a79-4a6d-495c-bcac-9664bdbe4b94",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "sel"
              }
            },
            {
              "source": {
                "block": "93bf4277-8774-4d86-a7c6-f2fb827b4f67",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i0"
              },
              "size": 23
            },
            {
              "source": {
                "block": "17f079d4-fcaa-4081-8d35-b2a7dacfe7b6",
                "port": "out"
              },
              "target": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "i1"
              },
              "size": 23
            },
            {
              "source": {
                "block": "34e6d77b-15a8-4b7c-8c41-09e9b8d4d2be",
                "port": "o"
              },
              "target": {
                "block": "1493adb9-c0a4-492b-b8be-584460f86079",
                "port": "in"
              },
              "size": 23
            }
          ]
        }
      }
    },
    "5d04f25ec079a6f3d1c41fd6c1d3ea09467ae59b": {
      "package": {
        "name": "Corazon_400Hz_P-ena",
        "version": "0.1",
        "description": "Corazon de 400Hz (2.5 ms) con enable",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22127.674%22%20height=%2286.688%22%20viewBox=%220%200%20119.69431%2081.269875%22%3E%3Cpath%20d=%22M43.573%2078.685c-1.401-2.404-3.574-4.758-7.691-8.332-2.23-1.936-3.588-3.012-11.312-8.961-6.055-4.665-9.076-7.253-12.576-10.775-3.499-3.522-5.556-6.327-7.32-9.985-1.126-2.336-1.9-4.586-2.383-6.925-.61-2.97-.694-3.976-.69-8.35.003-5.74.193-6.695%202.083-10.524%201.405-2.844%202.472-4.342%204.694-6.591%202.157-2.184%203.558-3.176%206.587-4.669%203.366-1.66%205.8-2.095%2010.814-1.934%203.897.126%205.323.512%208.412%202.285%204.862%202.79%208.634%207.267%209.679%2011.488.17.69.346%201.255.391%201.255.045%200%20.439-.807.875-1.794C46.62%2011.52%2048%209.472%2050.19%207.366%2056.899.917%2067.475-.249%2076.026%204.516c3.493%201.946%206.334%204.779%208.536%208.51%201.733%202.936%202.62%206.837%202.771%2012.195.219%207.762-1.205%2013.141-4.995%2018.874-1.504%202.275-2.617%203.653-4.703%205.825-3.366%203.506-6.402%206.083-13.57%2011.517-4.522%203.43-7.202%205.635-11.082%209.12-3.109%202.793-7.926%207.655-8.39%208.468-.203.355-.386.645-.408.645-.02%200-.296-.443-.612-.985z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223.2%22/%3E%3Ctext%20y=%22560.353%22%20x=%22376.562%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2229.312%22%20letter-spacing=%220%22%20word-spacing=%220%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%20transform=%22translate(-314.789%20-483.156)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22560.353%22%20x=%22376.562%22%20font-weight=%22700%22%20font-size=%2216.75%22%3E400Hz%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M30.714%2055.734h8.215V22.163h10.357v33.571h8.571%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "0d8e7605-ce3d-411f-b71a-e809d0ace991",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -1520,
                "y": 168
              }
            },
            {
              "id": "e1385e4a-78a0-4557-b2cf-f63469bab3a4",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": -632,
                "y": 168
              }
            },
            {
              "id": "ec2fd14a-858c-45cc-8660-a29e9869723d",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constante para dividir y obtener una frecuencia de 2Hz\nlocalparam M = 30_000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\nreg clk_1hz;\n\nalways @(posedge clk)\n    if (divcounter == M) begin\n      clk_1hz <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_1hz = 0;\n    end  \n    \n\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    }
                  ],
                  "out": [
                    {
                      "name": "clk_1hz"
                    }
                  ]
                }
              },
              "position": {
                "x": -1312,
                "y": 0
              },
              "size": {
                "width": 560,
                "height": 400
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "0d8e7605-ce3d-411f-b71a-e809d0ace991",
                "port": "out"
              },
              "target": {
                "block": "ec2fd14a-858c-45cc-8660-a29e9869723d",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "ec2fd14a-858c-45cc-8660-a29e9869723d",
                "port": "clk_1hz"
              },
              "target": {
                "block": "e1385e4a-78a0-4557-b2cf-f63469bab3a4",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}