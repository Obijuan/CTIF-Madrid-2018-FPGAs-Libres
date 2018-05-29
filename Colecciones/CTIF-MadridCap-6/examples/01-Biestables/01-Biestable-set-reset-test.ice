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
          "id": "bd0446c5-301f-4e12-9e23-43667ddf342e",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "SW1",
                "value": "10"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 160,
            "y": 96
          }
        },
        {
          "id": "f2920c4b-776f-41e6-96ca-6a4e9945c175",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "LED0",
                "value": "95"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 536,
            "y": 96
          }
        },
        {
          "id": "34064446-fb60-4455-b0bc-257f3ed39ee6",
          "type": "basic.input",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "SW2",
                "value": "11"
              }
            ],
            "virtual": false,
            "clock": false
          },
          "position": {
            "x": 160,
            "y": 232
          }
        },
        {
          "id": "9ec75970-eabf-4842-9b44-885d923b043e",
          "type": "6a5c56f36da0efd7fd7e723fa67129b84689036a",
          "position": {
            "x": 368,
            "y": 80
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
            "block": "bd0446c5-301f-4e12-9e23-43667ddf342e",
            "port": "out"
          },
          "target": {
            "block": "9ec75970-eabf-4842-9b44-885d923b043e",
            "port": "3ae2d46d-7981-497a-899f-b60bfae0f43e"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "34064446-fb60-4455-b0bc-257f3ed39ee6",
            "port": "out"
          },
          "target": {
            "block": "9ec75970-eabf-4842-9b44-885d923b043e",
            "port": "86eb8c81-17fc-4371-bd21-51f429191f3c"
          },
          "vertices": [
            {
              "x": 304,
              "y": 192
            }
          ]
        },
        {
          "source": {
            "block": "9ec75970-eabf-4842-9b44-885d923b043e",
            "port": "1cb167a4-9e2a-416b-803e-da7b6151eaa5"
          },
          "target": {
            "block": "f2920c4b-776f-41e6-96ca-6a4e9945c175",
            "port": "in"
          },
          "vertices": []
        }
      ]
    }
  },
  "dependencies": {
    "6a5c56f36da0efd7fd7e723fa67129b84689036a": {
      "package": {
        "name": "Biestable-Set-Reset",
        "version": "0.1",
        "description": "Biestable con entradas de Set y Reset síncronas, para poner y quitar notaficaciones de eventos",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20xmlns:xlink=%22http://www.w3.org/1999/xlink%22%20width=%22143.011%22%20height=%22226.268%22%20viewBox=%220%200%20134.0729%20212.12584%22%3E%3Cdefs%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22b%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x1=%22311.42%22%20y1=%22199.72%22%20x2=%22331.42%22%20y2=%22199.72%22/%3E%3ClinearGradient%20xlink:href=%22#a%22%20id=%22d%22%20gradientUnits=%22userSpaceOnUse%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x1=%22311.42%22%20y1=%22199.72%22%20x2=%22331.42%22%20y2=%22199.72%22/%3E%3C/defs%3E%3Cg%20transform=%22translate(-248.226%20-180.19)%22%3E%3Cg%20transform=%22matrix(.34452%200%200%20.29577%20177.455%20168.399)%22%3E%3ClinearGradient%20x1=%22311.42%22%20y1=%22199.72%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x2=%22331.42%22%20gradientUnits=%22userSpaceOnUse%22%20y2=%22199.72%22%20id=%22a%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#a6a6a6%22/%3E%3Cstop%20offset=%22.385%22%20stop-color=%22#fff%22/%3E%3Cstop%20offset=%22.914%22%20stop-color=%22#999%22/%3E%3C/linearGradient%3E%3Cpath%20d=%22M225.42%2053.506v665.97c0%205.523-4.477%2037.582-10%2037.582-5.522%200-10-32.059-10-37.582V53.506h20z%22%20fill=%22url(#b)%22/%3E%3ClinearGradient%20x1=%22311.42%22%20y1=%22437.03%22%20gradientTransform=%22matrix(1%200%200%20-1%20-106%20605)%22%20x2=%22700.58%22%20gradientUnits=%22userSpaceOnUse%22%20y2=%22437.03%22%20id=%22c%22%3E%3Cstop%20offset=%220%22%20stop-color=%22#ef0000%22/%3E%3Cstop%20offset=%22.431%22%20stop-color=%22#ff4000%22/%3E%3Cstop%20offset=%22.914%22%20stop-color=%22#ef0000%22/%3E%3C/linearGradient%3E%3Cpath%20d=%22M225.42%2053.506c122.84%2021.956%20246.32-35.422%20369.16-4.003v236.99c-129.72-33.179-259.44%2033.179-389.16%200V53.513%22%20fill=%22url(#c)%22/%3E%3Cpath%20d=%22M225.42%2053.506v665.97c0%205.523-4.477%2037.582-10%2037.582-5.522%200-10-32.059-10-37.582V53.506h20z%22%20opacity=%22.5%22%20fill=%22url(#d)%22/%3E%3C/g%3E%3Ccircle%20cx=%22316.787%22%20cy=%22306.556%22%20r=%2229.398%22%20fill=%22red%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22304.228%22%20y=%22319.954%22%20font-weight=%22400%22%20font-size=%2237.661%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22304.228%22%20y=%22319.954%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22#fff%22%3E1%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 200,
                "y": 64
              }
            },
            {
              "id": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 152
              }
            },
            {
              "id": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 720,
                "y": 152
              }
            },
            {
              "id": "86eb8c81-17fc-4371-bd21-51f429191f3c",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 200,
                "y": 232
              }
            },
            {
              "id": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
              "type": "basic.code",
              "data": {
                "code": "reg q = 0;\n\nalways @(posedge clk)\n  if (set)\n    q <= 1'b1;\n  else if (rst)\n    q<=1'b0;",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "set"
                    },
                    {
                      "name": "rst"
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
                "x": 400,
                "y": 120
              },
              "size": {
                "width": 224,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "9f09a4af-8f7a-45c3-af7b-293a244e76d9",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 336,
                  "y": 104
                }
              ]
            },
            {
              "source": {
                "block": "3ae2d46d-7981-497a-899f-b60bfae0f43e",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "86eb8c81-17fc-4371-bd21-51f429191f3c",
                "port": "out"
              },
              "target": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 344,
                  "y": 248
                }
              ]
            },
            {
              "source": {
                "block": "90068dea-9e7b-4a0f-afa3-e6585d0d8542",
                "port": "q"
              },
              "target": {
                "block": "1cb167a4-9e2a-416b-803e-da7b6151eaa5",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}