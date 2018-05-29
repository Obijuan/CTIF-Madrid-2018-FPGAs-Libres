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
          "id": "7c045e36-1115-426b-aa97-1e03f3b3ec4b",
          "type": "basic.output",
          "data": {
            "name": "",
            "pins": [
              {
                "index": "0",
                "name": "LED7",
                "value": "104"
              }
            ],
            "virtual": false
          },
          "position": {
            "x": 800,
            "y": -120
          }
        },
        {
          "id": "e6c3765c-2e77-4dbe-830c-a091a9a6a261",
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
            "x": 800,
            "y": -48
          }
        },
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
            "x": 120,
            "y": 112
          }
        },
        {
          "id": "1250bfd8-5291-470b-85d0-517e1be1d686",
          "type": "basic.constant",
          "data": {
            "name": "seg",
            "value": "5",
            "local": false
          },
          "position": {
            "x": 328,
            "y": -16
          }
        },
        {
          "id": "f52fa228-36a2-40bc-a0d4-acc5d8ff7c4e",
          "type": "f10b228cb70c96ec87525e4c6be92af355bf35fc",
          "position": {
            "x": 328,
            "y": 96
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "7ce1db95-4f9e-4b89-858b-129216e858b9",
          "type": "46c6caf136ed8deb60b1f86ad87388b243954154",
          "position": {
            "x": 360,
            "y": -136
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "84530648-a21f-4bbd-803b-5eeb299f1211",
          "type": "35f267d0df6ffcb7fc33753bc9df9cf083642cca",
          "position": {
            "x": 664,
            "y": -48
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "f5cd24bf-0e89-4686-b91b-71d6d17db91a",
          "type": "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6",
          "position": {
            "x": 512,
            "y": -120
          },
          "size": {
            "width": 96,
            "height": 64
          }
        },
        {
          "id": "43d41758-7281-4a82-9ec4-77c0231bf762",
          "type": "basic.info",
          "data": {
            "info": "**Alarma luminosa**",
            "readonly": true
          },
          "position": {
            "x": 656,
            "y": -176
          },
          "size": {
            "width": 168,
            "height": 40
          }
        }
      ],
      "wires": [
        {
          "source": {
            "block": "1250bfd8-5291-470b-85d0-517e1be1d686",
            "port": "constant-out"
          },
          "target": {
            "block": "f52fa228-36a2-40bc-a0d4-acc5d8ff7c4e",
            "port": "09ba481a-a3e2-4ffb-81f5-b6f40ca89635"
          }
        },
        {
          "source": {
            "block": "bd0446c5-301f-4e12-9e23-43667ddf342e",
            "port": "out"
          },
          "target": {
            "block": "f52fa228-36a2-40bc-a0d4-acc5d8ff7c4e",
            "port": "02360835-1c15-44a2-b7ea-03077cb31932"
          }
        },
        {
          "source": {
            "block": "84530648-a21f-4bbd-803b-5eeb299f1211",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "e6c3765c-2e77-4dbe-830c-a091a9a6a261",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f5cd24bf-0e89-4686-b91b-71d6d17db91a",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "7c045e36-1115-426b-aa97-1e03f3b3ec4b",
            "port": "in"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f5cd24bf-0e89-4686-b91b-71d6d17db91a",
            "port": "664caf9e-5f40-4df4-800a-b626af702e62"
          },
          "target": {
            "block": "84530648-a21f-4bbd-803b-5eeb299f1211",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "7ce1db95-4f9e-4b89-858b-129216e858b9",
            "port": "7340e107-20a2-41fb-b78e-132f842054f4"
          },
          "target": {
            "block": "f5cd24bf-0e89-4686-b91b-71d6d17db91a",
            "port": "18c2ebc7-5152-439c-9b3f-851c59bac834"
          },
          "vertices": []
        },
        {
          "source": {
            "block": "f52fa228-36a2-40bc-a0d4-acc5d8ff7c4e",
            "port": "cc69f080-9852-4e22-84bc-50a3a97c5d4d"
          },
          "target": {
            "block": "f5cd24bf-0e89-4686-b91b-71d6d17db91a",
            "port": "97b51945-d716-4b6c-9db9-970d08541249"
          }
        }
      ]
    }
  },
  "dependencies": {
    "f10b228cb70c96ec87525e4c6be92af355bf35fc": {
      "package": {
        "name": "Timer-secs",
        "version": "0.1",
        "description": "Temporizador: cuando se dispara, genera una señal a 1 activa por el numero de segundos indicados en el parametro",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20viewBox=%220%200%20505.89835%20399.4%22%20width=%22505.898%22%20height=%22399.4%22%3E%3Cg%20transform=%22translate(-92.9%20-90.8)%22%3E%3Cdefs%3E%3Cpath%20id=%22a%22%20d=%22M-58.3-45h653.6v640H-58.3z%22/%3E%3C/defs%3E%3Ccircle%20r=%22181.8%22%20cy=%22290.5%22%20cx=%22292.6%22%20fill=%22#fff%22/%3E%3Cpath%20d=%22M292.6%2090.8c-110.3%200-199.7%2089.4-199.7%20199.7%200%20110.3%2089.4%20199.7%20199.7%20199.7%20110.3%200%20199.7-89.4%20199.7-199.7%200-110.3-89.4-199.7-199.7-199.7zm0%20376.5c-97.7%200-176.8-79.2-176.8-176.8%200-97.6%2079.2-176.8%20176.8-176.8%2097.6%200%20176.8%2079.2%20176.8%20176.8%200%2097.6-79.2%20176.8-176.8%20176.8z%22%20fill=%22#333%22/%3E%3Cpath%20fill=%22#333%22%20d=%22M286.6%20134.9h12v47.2h-12zM137.098%20296.422v-12h47.2v12zM298.567%20445.971h-12v-47.2h12zM448.069%20284.455v12h-47.2v-12zM178.383%20184.748l8.485-8.485%2033.375%2033.375-8.485%208.485zM186.891%20404.642l-8.485-8.485%2033.375-33.376%208.486%208.485zM406.742%20396.176l-8.485%208.486-33.376-33.376%208.486-8.485zM398.319%20176.283l8.485%208.485-33.375%2033.376-8.486-8.485z%22/%3E%3Ccircle%20r=%2212.4%22%20cy=%22290.5%22%20cx=%22292.6%22%20fill=%22#333%22/%3E%3Cpath%20fill=%22#333%22%20d=%22M294.44%20238.557l7.06.748-5.47%2051.609-7.06-.748z%22/%3E%3Cpath%20fill=%22#333%22%20d=%22M376.043%20242.386l3.307%206.283-85.216%2044.857-3.307-6.283z%22/%3E%3Cpath%20d=%22M300.2%20263.8c-2.8%200-5%202.3-5%205%200%201.7.8%203.2%202.1%204.1l-38.1%20107.5%202.6.9%2038.1-107.5h.3c2.8%200%205-2.3%205-5s-2.2-5-5-5z%22%20fill=%22#cf000f%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22434.428%22%20y=%22486.657%22%20font-weight=%22400%22%20font-size=%2276.403%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22434.428%22%20y=%22486.657%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ESEG%3C/tspan%3E%3C/text%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -200,
                "y": 168
              }
            },
            {
              "id": "02360835-1c15-44a2-b7ea-03077cb31932",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": false
              },
              "position": {
                "x": -200,
                "y": 256
              }
            },
            {
              "id": "cc69f080-9852-4e22-84bc-50a3a97c5d4d",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 208,
                "y": 360
              }
            },
            {
              "id": "09ba481a-a3e2-4ffb-81f5-b6f40ca89635",
              "type": "basic.constant",
              "data": {
                "name": "SEG",
                "value": "2",
                "local": false
              },
              "position": {
                "x": 568,
                "y": 336
              }
            },
            {
              "id": "b62a7295-b9b4-455d-8511-754726bb593a",
              "type": "5c19aaf28565ccfe008e9ccd37697b8b9dea2e32",
              "position": {
                "x": -16,
                "y": 240
              },
              "size": {
                "width": 96,
                "height": 96
              }
            },
            {
              "id": "90d91991-fb6d-4217-a717-a8ac53f003fb",
              "type": "04dce6392817ac983fd0bcb6088ce235fa202b94",
              "position": {
                "x": 152,
                "y": 208
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "437af799-3831-4394-a6db-0879e11bbfc4",
              "type": "ecfb972b7d14665d28adab068486005ad18fa6f6",
              "position": {
                "x": 400,
                "y": 184
              },
              "size": {
                "width": 96,
                "height": 128
              }
            },
            {
              "id": "75024ef5-8548-4059-9a06-e19dd334a212",
              "type": "36d45a23315e6b3fcb068d28cf621902ea41ad80",
              "position": {
                "x": 568,
                "y": 448
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "3434da3c-d362-4776-bf0c-0f04b013be80",
              "type": "basic.info",
              "data": {
                "info": "Temporizador (en segundos)\n\nCuando se activa la entrada trig (a uno), activa la salida y comienza a contador segundos\nCuando se llega a los segundos especificados en SEG, la salida se pone a cero y finaliza",
                "readonly": true
              },
              "position": {
                "x": -160,
                "y": 16
              },
              "size": {
                "width": 704,
                "height": 96
              }
            },
            {
              "id": "692eb1db-b10c-49fe-9f79-e2c33d80ceff",
              "type": "basic.info",
              "data": {
                "info": "Biestable de estado\n1=Funcionando\n0 Desactivado",
                "readonly": true
              },
              "position": {
                "x": -64,
                "y": 344
              },
              "size": {
                "width": 176,
                "height": 80
              }
            },
            {
              "id": "5b017758-d418-42f0-9823-90f88c102302",
              "type": "basic.info",
              "data": {
                "info": "Generador de pulsos. 1 cada seg.\n",
                "readonly": true
              },
              "position": {
                "x": 32,
                "y": 152
              },
              "size": {
                "width": 272,
                "height": 32
              }
            },
            {
              "id": "1875eda4-3999-4eaa-8639-795323fdfb58",
              "type": "basic.info",
              "data": {
                "info": "Contador de segundos",
                "readonly": true
              },
              "position": {
                "x": 360,
                "y": 136
              },
              "size": {
                "width": 176,
                "height": 32
              }
            },
            {
              "id": "c1499be2-95e6-4dee-b480-dc146134f62f",
              "type": "basic.info",
              "data": {
                "info": "Comparador. Mientras contador < SEG, la señal eq está a 1\nCuando contador = SEG, eq se pone a 1 y se resetea el \nbiestable de estado, desactivando el temporizador",
                "readonly": true
              },
              "position": {
                "x": 568,
                "y": 152
              },
              "size": {
                "width": 480,
                "height": 64
              }
            },
            {
              "id": "b3f00fb0-88e1-495e-afb1-ac3337a4bdd0",
              "type": "basic.info",
              "data": {
                "info": "Segundos a esperar",
                "readonly": true
              },
              "position": {
                "x": 528,
                "y": 288
              },
              "size": {
                "width": 176,
                "height": 32
              }
            },
            {
              "id": "2bb99e0b-f88a-451e-9b6c-1f9fc1a927b7",
              "type": "199eb7da69d6b294ed346659507821b7b6b08bb2",
              "position": {
                "x": 752,
                "y": 232
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
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "8b83149e-b9df-4732-b02b-2133168ee773"
              },
              "target": {
                "block": "90d91991-fb6d-4217-a717-a8ac53f003fb",
                "port": "0abb181e-521d-4241-8c61-9594d956ecd1"
              }
            },
            {
              "source": {
                "block": "02360835-1c15-44a2-b7ea-03077cb31932",
                "port": "out"
              },
              "target": {
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "65817f7c-a972-414d-a223-6048e944cb30"
              }
            },
            {
              "source": {
                "block": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
                "port": "out"
              },
              "target": {
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "e39851c3-073d-42ce-a16b-fd9debb0b854"
              }
            },
            {
              "source": {
                "block": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
                "port": "out"
              },
              "target": {
                "block": "90d91991-fb6d-4217-a717-a8ac53f003fb",
                "port": "cb7c1e8d-cbe7-4458-92c5-6aa97febfde2"
              }
            },
            {
              "source": {
                "block": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
                "port": "out"
              },
              "target": {
                "block": "437af799-3831-4394-a6db-0879e11bbfc4",
                "port": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5"
              }
            },
            {
              "source": {
                "block": "90d91991-fb6d-4217-a717-a8ac53f003fb",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "437af799-3831-4394-a6db-0879e11bbfc4",
                "port": "d5c1d701-44ef-44d4-9328-8ba2dd4d1c28"
              }
            },
            {
              "source": {
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "8b83149e-b9df-4732-b02b-2133168ee773"
              },
              "target": {
                "block": "437af799-3831-4394-a6db-0879e11bbfc4",
                "port": "4368018b-53ec-4e81-8249-908973ae5d32"
              },
              "vertices": [
                {
                  "x": 304,
                  "y": 280
                }
              ]
            },
            {
              "source": {
                "block": "09ba481a-a3e2-4ffb-81f5-b6f40ca89635",
                "port": "constant-out"
              },
              "target": {
                "block": "75024ef5-8548-4059-9a06-e19dd334a212",
                "port": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4"
              }
            },
            {
              "source": {
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "8b83149e-b9df-4732-b02b-2133168ee773"
              },
              "target": {
                "block": "cc69f080-9852-4e22-84bc-50a3a97c5d4d",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "437af799-3831-4394-a6db-0879e11bbfc4",
                "port": "22f45b86-88ca-4a64-98ae-7e4a686b8daa"
              },
              "target": {
                "block": "2bb99e0b-f88a-451e-9b6c-1f9fc1a927b7",
                "port": "61f5252d-15b4-4017-be42-6941a903ecd0"
              },
              "size": 8
            },
            {
              "source": {
                "block": "75024ef5-8548-4059-9a06-e19dd334a212",
                "port": "32038fb9-c309-483d-a68c-de6fd7ab6a0f"
              },
              "target": {
                "block": "2bb99e0b-f88a-451e-9b6c-1f9fc1a927b7",
                "port": "9a4d0d89-e54c-41f9-8523-281344a1c62d"
              },
              "size": 8
            },
            {
              "source": {
                "block": "2bb99e0b-f88a-451e-9b6c-1f9fc1a927b7",
                "port": "a00c46bf-380f-4964-98c7-ba2f75337396"
              },
              "target": {
                "block": "437af799-3831-4394-a6db-0879e11bbfc4",
                "port": "edf0c735-008b-40b9-a06b-2a2c4ed81a52"
              },
              "vertices": [
                {
                  "x": 872,
                  "y": 536
                }
              ]
            },
            {
              "source": {
                "block": "2bb99e0b-f88a-451e-9b6c-1f9fc1a927b7",
                "port": "a00c46bf-380f-4964-98c7-ba2f75337396"
              },
              "target": {
                "block": "b62a7295-b9b4-455d-8511-754726bb593a",
                "port": "be0b69c5-4e61-4f16-8129-fb60ad18243d"
              },
              "vertices": [
                {
                  "x": -88,
                  "y": 536
                }
              ]
            }
          ]
        }
      }
    },
    "5c19aaf28565ccfe008e9ccd37697b8b9dea2e32": {
      "package": {
        "name": "Chincheta-D-0-set-rst",
        "version": "0.1",
        "description": "Biestable D con entradas de reset y set síncronas, inicializado a 0",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2263.799%22%20height=%2257.366%22%20viewBox=%220%200%2059.811602%2053.780232%22%3E%3Cg%20transform=%22translate(-310.54%20-373.968)%22%3E%3Cpath%20d=%22M353.401%20407.803l3.157%2019.445%203.914-19.445%22%20fill=%22#ccc%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22310.844%22%20y=%22395.812%22%20font-weight=%22400%22%20font-size=%2227.335%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22310.844%22%20y=%22395.812%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ED%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22316.916%22%20y=%22420.476%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%22316.916%22%20y=%22420.476%22%3E0%3C/tspan%3E%3C/text%3E%3Crect%20width=%2223.595%22%20height=%2221.484%22%20x=%22311.539%22%20y=%22402.712%22%20ry=%223.545%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M351.238%20398.03l1.658-19.774h-6.818v-3.788h22.097v3.788h-6.44l1.196%2019.953s5.208.866%206.428%204.494c1.221%203.628-.254%205.053.105%205.104l-25.022-.03s-.566-4.234%201.398-6.377c1.965-2.142%205.398-3.37%205.398-3.37z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e39851c3-073d-42ce-a16b-fd9debb0b854",
              "type": "basic.input",
              "data": {
                "name": "clk",
                "clock": true
              },
              "position": {
                "x": 104,
                "y": 40
              }
            },
            {
              "id": "8b83149e-b9df-4732-b02b-2133168ee773",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 152
              }
            },
            {
              "id": "65817f7c-a972-414d-a223-6048e944cb30",
              "type": "basic.input",
              "data": {
                "name": "set",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 152
              }
            },
            {
              "id": "be0b69c5-4e61-4f16-8129-fb60ad18243d",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 104,
                "y": 224
              }
            },
            {
              "id": "6a533d23-eb2d-4235-811b-2c19715aaf4b",
              "type": "basic.code",
              "data": {
                "code": "reg q;\n\nalways @(clk)\n if (rst)\n   q <= 0;\n else if (set)\n   q <= 1;\n",
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
                "x": 280,
                "y": 120
              },
              "size": {
                "width": 176,
                "height": 128
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "6a533d23-eb2d-4235-811b-2c19715aaf4b",
                "port": "q"
              },
              "target": {
                "block": "8b83149e-b9df-4732-b02b-2133168ee773",
                "port": "in"
              }
            },
            {
              "source": {
                "block": "65817f7c-a972-414d-a223-6048e944cb30",
                "port": "out"
              },
              "target": {
                "block": "6a533d23-eb2d-4235-811b-2c19715aaf4b",
                "port": "set"
              }
            },
            {
              "source": {
                "block": "be0b69c5-4e61-4f16-8129-fb60ad18243d",
                "port": "out"
              },
              "target": {
                "block": "6a533d23-eb2d-4235-811b-2c19715aaf4b",
                "port": "rst"
              }
            },
            {
              "source": {
                "block": "e39851c3-073d-42ce-a16b-fd9debb0b854",
                "port": "out"
              },
              "target": {
                "block": "6a533d23-eb2d-4235-811b-2c19715aaf4b",
                "port": "clk"
              }
            }
          ]
        }
      }
    },
    "04dce6392817ac983fd0bcb6088ce235fa202b94": {
      "package": {
        "name": "Corazon_1x_P_ena",
        "version": "0.1",
        "description": "Generacion de pulsos de 1 periodo de reloj de ancho, con enable",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22113.28%22%20height=%2281.27%22%20viewBox=%220%200%20106.20044%2076.190928%22%3E%3Ctext%20y=%22443.842%22%20x=%22-155.758%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2240.397%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%20transform=%22translate(238.359%20-394.146)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22443.842%22%20x=%22-155.758%22%20font-weight=%22700%22%20font-size=%2223.084%22%3E1%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M40.85%2073.768c-1.314-2.254-3.351-4.461-7.211-7.812-2.091-1.815-3.363-2.823-10.605-8.401-5.676-4.373-8.508-6.799-11.79-10.101-3.28-3.302-5.208-5.932-6.862-9.361-1.056-2.19-1.782-4.3-2.234-6.492-.573-2.785-.651-3.728-.648-7.829.004-5.381.182-6.276%201.954-9.866%201.317-2.666%202.317-4.07%204.4-6.179C9.877%205.68%2011.19%204.75%2014.03%203.35c3.155-1.556%205.437-1.964%2010.138-1.813%203.653.118%204.99.48%207.886%202.142%204.558%202.615%208.095%206.813%209.074%2010.77.16.647.325%201.177.367%201.177.042%200%20.411-.757.82-1.682C43.707%2010.799%2045%208.88%2047.054%206.906%2053.343.86%2063.258-.233%2071.275%204.234c3.274%201.824%205.938%204.48%208.002%207.978%201.625%202.753%202.456%206.41%202.598%2011.433.205%207.277-1.13%2012.32-4.683%2017.694-1.41%202.133-2.453%203.425-4.409%205.461-3.156%203.287-6.002%205.703-12.721%2010.798-4.24%203.215-6.753%205.282-10.39%208.55-2.915%202.618-7.431%207.176-7.866%207.938-.19.333-.362.605-.382.605-.02%200-.278-.415-.574-.923z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%223%22/%3E%3Cpath%20d=%22M77.277%2053.462h25.759%22%20fill=%22none%22%20stroke=%22red%22%20stroke-width=%223%22/%3E%3Ctext%20y=%22463.171%22%20x=%22-164.04%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2227.48%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22red%22%20transform=%22translate(238.359%20-394.146)%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22463.171%22%20x=%22-164.04%22%20font-weight=%22700%22%20font-size=%2215.703%22%3ESeg%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M26.952%2049.239h10.205V22.905h7.952V49.28H53.8%22%20fill=%22none%22%20stroke=%22#00f%22%20stroke-width=%222.813%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22bevel%22/%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "cb7c1e8d-cbe7-4458-92c5-6aa97febfde2",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": -96,
                "y": 80
              }
            },
            {
              "id": "70887b0b-826c-4150-a873-605b77da8272",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 648,
                "y": 160
              }
            },
            {
              "id": "0abb181e-521d-4241-8c61-9594d956ecd1",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": -64,
                "y": 240
              }
            },
            {
              "id": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
              "type": "basic.code",
              "data": {
                "code": "\n//-- Constante para dividir y obtener una frecuencia de 2Hz\nlocalparam M = 12000000;\n\n//-- Calcular el numero de bits para almacenar M\nlocalparam N = $clog2(M);\n\n//-- Registro del divisor\nreg [N-1:0] divcounter;\n\nreg clk_1hz;\n\nalways @(posedge clk)\n  if (ena)\n    if (divcounter == M) begin\n      clk_1hz <= 1;\n      divcounter = 0;\n    end \n    else begin\n      divcounter <=  divcounter + 1;\n      clk_1hz = 0;\n    end  \n  else\n    divcounter <= 0;\n    \n\n",
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
                      "name": "clk_1hz"
                    }
                  ]
                }
              },
              "position": {
                "x": 96,
                "y": 32
              },
              "size": {
                "width": 448,
                "height": 320
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "cb7c1e8d-cbe7-4458-92c5-6aa97febfde2",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk"
              }
            },
            {
              "source": {
                "block": "0abb181e-521d-4241-8c61-9594d956ecd1",
                "port": "out"
              },
              "target": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "ena"
              }
            },
            {
              "source": {
                "block": "7e864797-b165-408f-a9ce-2e71dc63f8b8",
                "port": "clk_1hz"
              },
              "target": {
                "block": "70887b0b-826c-4150-a873-605b77da8272",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "ecfb972b7d14665d28adab068486005ad18fa6f6": {
      "package": {
        "name": "Contador-8bits-up-ini-0",
        "version": "0.1",
        "description": "Contador ascendente de 8 bits, inicializado a 0, con reset síncrono y enable. Cuenta los pulsos que llegan por tic",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22222.875%22%20height=%22100.409%22%20viewBox=%220%200%20208.94489%2094.133108%22%3E%3Cdefs%3E%3Cmarker%20orient=%22auto%22%20id=%22a%22%20overflow=%22visible%22%3E%3Cpath%20d=%22M2.308%200l-3.46%202v-4l3.46%202z%22%20fill=%22#00f%22%20fill-rule=%22evenodd%22%20stroke=%22#00f%22%20stroke-width=%22.4pt%22/%3E%3C/marker%3E%3C/defs%3E%3Cg%20transform=%22translate(-184.027%20-300.01)%22%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22318.242%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22340.77%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22340.77%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M319.74%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22229.495%22%20y=%22314.854%22%20font-weight=%22400%22%20font-size=%2220%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22229.495%22%20y=%22314.854%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EContador%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M378.373%20388.969V343.75%22%20fill=%22#00f%22%20stroke=%22#00f%22%20stroke-width=%226%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22%20marker-end=%22url(#a)%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22273.599%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22293.536%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22293.536%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M275.097%20362.607h37.093%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22229.67%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22247.059%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22247.059%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M231.168%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3Crect%20width=%2239.464%22%20height=%2263.929%22%20x=%22185.027%22%20y=%22329.214%22%20ry=%223.75%22%20fill=%22#666%22%20stroke=%22#000%22%20stroke-width=%222%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%22199.826%22%20y=%22359.153%22%20transform=%22scale(.94516%201.05802)%22%20font-weight=%22400%22%20font-size=%2247.638%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%222%22%3E%3Ctspan%20x=%22199.826%22%20y=%22359.153%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3E0%3C/tspan%3E%3C/text%3E%3Cpath%20d=%22M186.525%20362.607h37.094%22%20fill=%22#fff%22%20stroke=%22#000%22%20stroke-width=%223%22%20stroke-linecap=%22square%22%20stroke-linejoin=%22round%22/%3E%3C/g%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 48,
                "y": 128
              }
            },
            {
              "id": "d5c1d701-44ef-44d4-9328-8ba2dd4d1c28",
              "type": "basic.input",
              "data": {
                "name": "tic",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 208
              }
            },
            {
              "id": "22f45b86-88ca-4a64-98ae-7e4a686b8daa",
              "type": "basic.output",
              "data": {
                "name": "q",
                "range": "[7:0]",
                "size": 8
              },
              "position": {
                "x": 736,
                "y": 232
              }
            },
            {
              "id": "4368018b-53ec-4e81-8249-908973ae5d32",
              "type": "basic.input",
              "data": {
                "name": "ena",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 280
              }
            },
            {
              "id": "edf0c735-008b-40b9-a06b-2a2c4ed81a52",
              "type": "basic.input",
              "data": {
                "name": "rst",
                "clock": false
              },
              "position": {
                "x": 48,
                "y": 352
              }
            },
            {
              "id": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
              "type": "basic.code",
              "data": {
                "code": "reg [7:0] q = 0;\n\nalways @(posedge clk)\n  if (rst)\n    q <= 0;\n  else if (ena == 1)\n     if (tic)\n      q <= q + 1;\n    \n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "clk"
                    },
                    {
                      "name": "tic"
                    },
                    {
                      "name": "ena"
                    },
                    {
                      "name": "rst"
                    }
                  ],
                  "out": [
                    {
                      "name": "q",
                      "range": "[7:0]",
                      "size": 8
                    }
                  ]
                }
              },
              "position": {
                "x": 320,
                "y": 176
              },
              "size": {
                "width": 240,
                "height": 176
              }
            },
            {
              "id": "e8bbc4ff-60ef-49c7-b947-15df33c0932a",
              "type": "basic.info",
              "data": {
                "info": "Contador ascendente de 8 bits\n\n* Entrada rst que pone a cero contador (síncrona)\n* tic: Se incrementa con cada pulso recibido en tic, de 1 periodo de duracion\n* ena: Habilitar contador. Si ena = 0 no cuenta (y retiene el valor actual)",
                "readonly": true
              },
              "position": {
                "x": 32,
                "y": 0
              },
              "size": {
                "width": 624,
                "height": 96
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "e7af5179-c319-4f3f-a9c7-49fa5fb312e5",
                "port": "out"
              },
              "target": {
                "block": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
                "port": "clk"
              },
              "vertices": [
                {
                  "x": 224,
                  "y": 168
                }
              ]
            },
            {
              "source": {
                "block": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
                "port": "q"
              },
              "target": {
                "block": "22f45b86-88ca-4a64-98ae-7e4a686b8daa",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "d5c1d701-44ef-44d4-9328-8ba2dd4d1c28",
                "port": "out"
              },
              "target": {
                "block": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
                "port": "tic"
              }
            },
            {
              "source": {
                "block": "4368018b-53ec-4e81-8249-908973ae5d32",
                "port": "out"
              },
              "target": {
                "block": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
                "port": "ena"
              },
              "vertices": [
                {
                  "x": 208,
                  "y": 304
                }
              ]
            },
            {
              "source": {
                "block": "edf0c735-008b-40b9-a06b-2a2c4ed81a52",
                "port": "out"
              },
              "target": {
                "block": "1cf99192-9eb5-4ab4-bdd9-0241b7468697",
                "port": "rst"
              },
              "vertices": [
                {
                  "x": 232,
                  "y": 352
                }
              ]
            }
          ]
        }
      }
    },
    "36d45a23315e6b3fcb068d28cf621902ea41ad80": {
      "package": {
        "name": "AA_8bits",
        "version": "0.0.1",
        "description": "Valor constante 0xAA para bus de 8 bits",
        "author": "Juan Gonzalez-Gomez (Obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%2247.997%22%20height=%2230.109%22%20viewBox=%220%200%2044.997735%2028.227376%22%3E%3Ctext%20style=%22line-height:125%25;-inkscape-font-specification:sans-serif%22%20x=%22-1.706%22%20y=%2213.545%22%20font-weight=%22400%22%20font-size=%2218.58%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%22-1.706%22%20y=%2213.545%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3ENum%3C/tspan%3E%3C/text%3E%3Ctext%20style=%22line-height:125%25%22%20x=%223.746%22%20y=%2228.044%22%20font-weight=%22400%22%20font-size=%2212.972%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%3E%3Ctspan%20x=%223.746%22%20y=%2228.044%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%20fill=%22green%22%3E8%20bits%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
              "type": "basic.output",
              "data": {
                "name": "K",
                "range": "[7:0]",
                "size": 8
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
                "value": "8'h00",
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
                      "range": "[7:0]",
                      "size": 8
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
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "k"
              },
              "target": {
                "block": "32038fb9-c309-483d-a68c-de6fd7ab6a0f",
                "port": "in"
              },
              "size": 8
            },
            {
              "source": {
                "block": "c0fb4784-5e8c-4f41-9f4b-6daa2e9e03a4",
                "port": "constant-out"
              },
              "target": {
                "block": "7dbe7521-0f9f-43ee-ab0c-0439e2c20bc2",
                "port": "V"
              }
            }
          ]
        }
      }
    },
    "199eb7da69d6b294ed346659507821b7b6b08bb2": {
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
              "id": "61f5252d-15b4-4017-be42-6941a903ecd0",
              "type": "basic.input",
              "data": {
                "name": "a",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 152,
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
              "id": "9a4d0d89-e54c-41f9-8523-281344a1c62d",
              "type": "basic.input",
              "data": {
                "name": "b",
                "range": "[7:0]",
                "clock": false,
                "size": 8
              },
              "position": {
                "x": 152,
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
                      "range": "[7:0]",
                      "size": 8
                    },
                    {
                      "name": "b",
                      "range": "[7:0]",
                      "size": 8
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
                "block": "61f5252d-15b4-4017-be42-6941a903ecd0",
                "port": "out"
              },
              "target": {
                "block": "498072a7-61ad-4332-90ee-8d0efd5657c6",
                "port": "a"
              },
              "size": 8
            },
            {
              "source": {
                "block": "9a4d0d89-e54c-41f9-8523-281344a1c62d",
                "port": "out"
              },
              "target": {
                "block": "498072a7-61ad-4332-90ee-8d0efd5657c6",
                "port": "b"
              },
              "size": 8
            }
          ]
        }
      }
    },
    "46c6caf136ed8deb60b1f86ad87388b243954154": {
      "package": {
        "name": "Corazon_2Hz",
        "version": "0.1",
        "description": "Bombear 2 bits por segundo",
        "author": "Juan Gonzalez-Gomez (obijuan)",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22200.13%22%20height=%22156.592%22%20viewBox=%220%200%20187.62306%20146.80587%22%3E%3Cpath%20d=%22M78.589%20143.492c-2.574-4.428-6.565-8.765-14.127-15.349-4.096-3.566-6.588-5.547-20.776-16.507-11.12-8.592-16.667-13.358-23.097-19.846-6.426-6.488-10.203-11.656-13.443-18.393-2.069-4.303-3.49-8.449-4.376-12.756C1.647%2055.17%201.494%2053.316%201.5%2045.26c.008-10.573.357-12.332%203.828-19.385%202.58-5.239%204.54-7.997%208.62-12.141%203.963-4.022%206.535-5.85%2012.099-8.6%206.18-3.058%2010.651-3.86%2019.86-3.562%207.157.231%209.777.943%2015.45%204.208%208.93%205.138%2015.858%2013.387%2017.776%2021.161.314%201.272.637%202.313.72%202.313.082%200%20.804-1.487%201.606-3.305%202.727-6.18%205.26-9.95%209.284-13.828%2012.32-11.88%2031.744-14.027%2047.45-5.25%206.414%203.584%2011.633%208.802%2015.676%2015.675%203.184%205.41%204.812%2012.595%205.09%2022.464.401%2014.298-2.214%2024.207-9.175%2034.766-2.762%204.19-4.805%206.73-8.637%2010.73-6.183%206.458-11.758%2011.205-24.921%2021.216-8.306%206.317-13.23%2010.378-20.355%2016.8-5.71%205.143-14.557%2014.099-15.41%2015.596-.372.654-.709%201.189-.748%201.189-.039%200-.544-.816-1.124-1.814z%22%20fill=%22red%22%20stroke=%22#000%22%20stroke-width=%222.813%22/%3E%3Ctext%20y=%22136.277%22%20x=%22124.207%22%20style=%22line-height:125%25%22%20font-weight=%22400%22%20font-size=%2253.914%22%20letter-spacing=%220%22%20word-spacing=%220%22%20transform=%22scale(.99853%201.00147)%22%20font-family=%22sans-serif%22%20fill=%22#00f%22%3E%3Ctspan%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20y=%22136.277%22%20x=%22124.207%22%20font-weight=%22700%22%20font-size=%2230.808%22%3E2Hz%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "7340e107-20a2-41fb-b78e-132f842054f4",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 512,
                "y": 208
              }
            },
            {
              "id": "b3b20031-2450-4a38-9bb1-52d7731142a7",
              "type": "basic.input",
              "data": {
                "name": "",
                "clock": true
              },
              "position": {
                "x": 184,
                "y": 208
              }
            },
            {
              "id": "d1294315-16b7-4a0d-b955-ff89709fada0",
              "type": "basic.constant",
              "data": {
                "name": "HZ",
                "value": "2",
                "local": true
              },
              "position": {
                "x": 360,
                "y": 88
              }
            },
            {
              "id": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
              "type": "0e64bc728cbb881007bf629e44dc5b5b0fa3a34c",
              "position": {
                "x": 360,
                "y": 208
              },
              "size": {
                "width": 96,
                "height": 64
              }
            },
            {
              "id": "6e84c2db-d26a-4c0f-a689-6363d34dad3b",
              "type": "basic.info",
              "data": {
                "info": "Creado a partir de un **corazón  \ngenérico**, dando el valor adecuado  \na su parámetro frecuencia",
                "readonly": true
              },
              "position": {
                "x": 152,
                "y": 0
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
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
                "port": "70887b0b-826c-4150-a873-605b77da8272"
              },
              "target": {
                "block": "7340e107-20a2-41fb-b78e-132f842054f4",
                "port": "in"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "b3b20031-2450-4a38-9bb1-52d7731142a7",
                "port": "out"
              },
              "target": {
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
                "port": "4656865c-bcf1-4668-8e13-9221e32222d3"
              },
              "vertices": []
            },
            {
              "source": {
                "block": "d1294315-16b7-4a0d-b955-ff89709fada0",
                "port": "constant-out"
              },
              "target": {
                "block": "e0d41cb1-3dce-4bad-8bd3-55a8d454455c",
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
    "35f267d0df6ffcb7fc33753bc9df9cf083642cca": {
      "package": {
        "name": "NOT",
        "version": "1.0.3",
        "description": "Puerta NOT",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22317.651%22%20height=%22194.058%22%20version=%221%22%3E%3Cpath%20d=%22M69.246%204l161.86%2093.027-161.86%2093.031V4z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cellipse%20cx=%22253.352%22%20cy=%2296.736%22%20rx=%2221.393%22%20ry=%2221.893%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2097.49h65.262m205.796%200h38.48%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2281.112%22%20y=%22111.734%22%20transform=%22scale(.99532%201.0047)%22%20font-weight=%22400%22%20font-size=%2249.675%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2281.112%22%20y=%22111.734%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3ENot%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 144
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 752,
                "y": 144
              }
            },
            {
              "id": "5365ed8c-e5db-4445-938f-8d689830ea5c",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta NOT\n\n//-- module (input wire a, output wire c);\n\n\nassign c = ~a;\n\n\n//-- endmodule\n",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 400,
                "height": 256
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "5365ed8c-e5db-4445-938f-8d689830ea5c",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    },
    "b2090f68ef94fd3c5c0eaea93eb6ba7e80aff0b6": {
      "package": {
        "name": "AND",
        "version": "1.0.1",
        "description": "Puerta AND",
        "author": "Jesús Arroyo, Juan González",
        "image": "%3Csvg%20xmlns=%22http://www.w3.org/2000/svg%22%20width=%22336.09%22%20height=%22194.045%22%20version=%221%22%3E%3Cpath%20d=%22M174.656%20190.045H78.304V4h96.352s87.463%208.625%2087.463%2091.94c0%2083.311-87.463%2094.105-87.463%2094.105z%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linejoin=%22round%22/%3E%3Cpath%20d=%22M4.057%2045.668h74.018M4.057%20144.812h74.018m184.632-50.034h69.326%22%20fill=%22none%22%20stroke=%22#000%22%20stroke-width=%228%22%20stroke-linecap=%22round%22/%3E%3Ctext%20style=%22line-height:125%25%22%20x=%2292.894%22%20y=%22114.587%22%20font-weight=%22400%22%20font-size=%2258.054%22%20font-family=%22sans-serif%22%20letter-spacing=%220%22%20word-spacing=%220%22%20fill=%22#00f%22%3E%3Ctspan%20x=%2292.894%22%20y=%22114.587%22%20style=%22-inkscape-font-specification:'sans-serif%20Bold'%22%20font-weight=%22700%22%3EAND%3C/tspan%3E%3C/text%3E%3C/svg%3E"
      },
      "design": {
        "graph": {
          "blocks": [
            {
              "id": "18c2ebc7-5152-439c-9b3f-851c59bac834",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 88
              }
            },
            {
              "id": "664caf9e-5f40-4df4-800a-b626af702e62",
              "type": "basic.output",
              "data": {
                "name": ""
              },
              "position": {
                "x": 784,
                "y": 152
              }
            },
            {
              "id": "97b51945-d716-4b6c-9db9-970d08541249",
              "type": "basic.input",
              "data": {
                "name": ""
              },
              "position": {
                "x": 64,
                "y": 224
              }
            },
            {
              "id": "00925b04-5004-4307-a737-fa4e97c8b6ab",
              "type": "basic.code",
              "data": {
                "code": "//-- Puerta AND\n\n//-- module and (input wire a, input wire b,\n//--             output wire c);\n\nassign c = a & b;\n\n//-- endmodule",
                "params": [],
                "ports": {
                  "in": [
                    {
                      "name": "a"
                    },
                    {
                      "name": "b"
                    }
                  ],
                  "out": [
                    {
                      "name": "c"
                    }
                  ]
                }
              },
              "position": {
                "x": 256,
                "y": 48
              },
              "size": {
                "width": 464,
                "height": 272
              }
            }
          ],
          "wires": [
            {
              "source": {
                "block": "18c2ebc7-5152-439c-9b3f-851c59bac834",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "a"
              }
            },
            {
              "source": {
                "block": "97b51945-d716-4b6c-9db9-970d08541249",
                "port": "out"
              },
              "target": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "b"
              }
            },
            {
              "source": {
                "block": "00925b04-5004-4307-a737-fa4e97c8b6ab",
                "port": "c"
              },
              "target": {
                "block": "664caf9e-5f40-4df4-800a-b626af702e62",
                "port": "in"
              }
            }
          ]
        }
      }
    }
  }
}