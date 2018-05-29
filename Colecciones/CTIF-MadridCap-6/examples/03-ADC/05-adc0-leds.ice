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
          "id": "71a7318d-6caa-4751-b2e4-bb74675a4936",
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
            "x": 680,
            "y": 80
          }
        },
        {
          "id": "03467cf5-9876-4923-bc0e-3f4ff8de6bc5",
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
            "y": 216
          }
        },
        {
          "id": "d7568113-edba-4514-a82f-4ad71a8bc10c",
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
            "x": 520,
            "y": 240
          }
        },
        {
          "id": "6ce326bf-b932-4e5a-8eb1-3e9867f7b721",
          "type": "3ef04116e82fa21433e35100e073150a62372d72",
          "position": {
            "x": 360,
            "y": 200
          },
          "size": {
            "width": 96,
            "height": 96
          }
        },
        {
          "id": "62b890f4-e74c-441c-b075-24524914e2c3",
          "type": "9145319126ac1b81ea15f1e8187601adec774394",
          "position": {
            "x": 120,
            "y": 344
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
            "block": "6ce326bf-b932-4e5a-8eb1-3e9867f7b721",
            "port": "91f10cfc-fafb-47c1-88ee-127b10bca7bf"
          },
          "target": {
            "block": "71a7318d-6caa-4751-b2e4-bb74675a4936",
            "port": "in"
          },
          "size": 8
        },
        {
          "source": {
            "block": "62b890f4-e74c-441c-b075-24524914e2c3",
            "port": "95281825-5850-408d-9040-93866452f146"
          },
          "target": {
            "block": "6ce326bf-b932-4e5a-8eb1-3e9867f7b721",
            "port": "fbf9ec95-d00e-4bae-8016-bf9044ad4b3c"
          }
        },
        {
          "source": {
            "block": "03467cf5-9876-4923-bc0e-3f4ff8de6bc5",
            "port": "out"
          },
          "target": {
            "block": "6ce326bf-b932-4e5a-8eb1-3e9867f7b721",
            "port": "cedb3583-19c2-429e-a3e4-7e71f72b1e73"
          }
        },
        {
          "source": {
            "block": "6ce326bf-b932-4e5a-8eb1-3e9867f7b721",
            "port": "0a489929-0d21-4d7a-8ff5-83d31aa42ed5"
          },
          "target": {
            "block": "d7568113-edba-4514-a82f-4ad71a8bc10c",
            "port": "in"
          }
        }
      ]
    }
  },
  "dependencies": {
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
    }
  }
}