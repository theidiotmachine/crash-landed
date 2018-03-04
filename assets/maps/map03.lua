return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.1",
  orientation = "orthogonal",
  renderorder = "left-down",
  width = 200,
  height = 20,
  tilewidth = 128,
  tileheight = 128,
  nextobjectid = 451,
  properties = {},
  tilesets = {
    {
      name = "spritesheet_ground",
      firstgid = 1,
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/spritesheet_ground.png",
      imagewidth = 1024,
      imageheight = 2048,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 128,
      tiles = {
        {
          id = 0,
          properties = {
            ["collidable"] = true,
            ["stuff"] = "grass"
          }
        },
        {
          id = 1,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 2,
          properties = {
            ["stuff"] = "dirt"
          }
        },
        {
          id = 3,
          properties = {
            ["stuff"] = "stone"
          }
        },
        {
          id = 4,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 5,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 6,
          properties = {
            ["stuff"] = "purple"
          }
        },
        {
          id = 8,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 9,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 10,
          properties = {
            ["stuff"] = "stone"
          }
        },
        {
          id = 11,
          properties = {
            ["stuff"] = "stone"
          }
        },
        {
          id = 12,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 13,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 14,
          properties = {
            ["stuff"] = "purple"
          }
        },
        {
          id = 16,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 17,
          properties = {
            ["stuff"] = "dirt"
          }
        },
        {
          id = 18,
          properties = {
            ["stuff"] = "stone"
          }
        },
        {
          id = 19,
          properties = {
            ["stuff"] = "stone"
          }
        },
        {
          id = 20,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 21,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 24,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = -128 },
                  { x = 128, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 28,
          properties = {
            ["stuff"] = "ice"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 127,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 1 },
                  { x = 128, y = -79 },
                  { x = 128, y = -127 },
                  { x = 0, y = -127 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 29,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 64 },
                  { x = 64, y = 115.2 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 32,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 37,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 128 },
                  { x = 51.2, y = 115.2 },
                  { x = 0, y = 64 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 40,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 72 },
                  { x = 0, y = 72 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 41,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = -128 },
                  { x = 128, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 45,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 38.4 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 48,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 72 },
                  { x = 0, y = 72 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 49,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 51,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 52,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 53,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 51.2 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 56,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 72,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 59,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 60,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 61,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 64,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 72,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 67,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 68,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 69,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 72,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 75,
          properties = {
            ["stuff"] = "ice",
            ["verts"] = "{{x=1, y=0}, {x=1, y=1}, {x=0, y=1}}"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = -128 },
                  { x = 128, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 76,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 77,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 80,
          properties = {
            ["stuff"] = "grass"
          }
        },
        {
          id = 83,
          properties = {
            ["stuff"] = "ice",
            ["verts"] = "{{x=0, y=0}, {x=1, y =1}, {x=0, y=1}}"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 84,
          properties = {
            ["stuff"] = "sand"
          }
        },
        {
          id = 88,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 72 },
                  { x = 80, y = 112 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 92,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = -128 },
                  { x = 128, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 96,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 128 },
                  { x = 48, y = 112 },
                  { x = 0, y = 72 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 100,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 104,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 48 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 108,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 109,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = -128 },
                  { x = 128, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 112,
          properties = {
            ["stuff"] = "grass"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 40 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 116,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 117,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 123,
          properties = {
            ["stuff"] = "ice"
          }
        },
        {
          id = 124,
          properties = {
            ["stuff"] = "sand"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "spritesheet_items",
      firstgid = 129,
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/spritesheet_items.png",
      imagewidth = 1024,
      imageheight = 512,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 32,
      tiles = {
        {
          id = 1,
          type = "flag",
          properties = {
            ["downTileid"] = 17
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 1,
              duration = 200
            },
            {
              tileid = 9,
              duration = 200
            }
          }
        },
        {
          id = 2,
          type = "flag",
          properties = {
            ["downTileid"] = 10
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 2,
              duration = 200
            },
            {
              tileid = 25,
              duration = 200
            }
          }
        },
        {
          id = 3,
          type = "coin",
          properties = {
            ["money"] = "1"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 32,
                y = 32,
                width = 64,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 5,
          type = "gem",
          properties = {
            ["color"] = "green"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 16,
                y = 32,
                width = 96,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 6,
          type = "p1start"
        },
        {
          id = 8,
          type = "flag",
          properties = {
            ["downTileId"] = 24
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 8,
              duration = 200
            },
            {
              tileid = 16,
              duration = 200
            }
          }
        },
        {
          id = 9,
          type = "flag",
          properties = {
            ["downTileid"] = 17
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 1,
              duration = 200
            },
            {
              tileid = 9,
              duration = 200
            }
          }
        },
        {
          id = 11,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 32,
                y = 32,
                width = 64,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 13,
          type = "gem",
          properties = {
            ["color"] = "blue"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 16,
                y = 32,
                width = 96,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 16,
          type = "flag",
          properties = {
            ["downTileid"] = 24
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 8,
              duration = 200
            },
            {
              tileid = 16,
              duration = 200
            }
          }
        },
        {
          id = 18,
          type = "coin",
          properties = {
            ["money"] = "5"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 32,
                y = 32,
                width = 64,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 20,
          type = "gem",
          properties = {
            ["color"] = "yellow"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 16,
                y = 32,
                width = 96,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 21,
          type = "flag",
          properties = {
            ["downTileid"] = 0
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 26,
              duration = 200
            },
            {
              tileid = 21,
              duration = 200
            }
          }
        },
        {
          id = 25,
          type = "flag",
          properties = {
            ["downTileid"] = 10
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 2,
              duration = 200
            },
            {
              tileid = 25,
              duration = 200
            }
          }
        },
        {
          id = 26,
          type = "flag",
          properties = {
            ["downTileid"] = 0
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          },
          animation = {
            {
              tileid = 26,
              duration = 200
            },
            {
              tileid = 21,
              duration = 200
            }
          }
        },
        {
          id = 28,
          type = "gem",
          properties = {
            ["color"] = "red"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 16,
                y = 32,
                width = 96,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 29,
          type = "coin",
          properties = {
            ["money"] = "10"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 32,
                y = 32,
                width = 64,
                height = 64,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        }
      }
    },
    {
      name = "enemies",
      firstgid = 161,
      filename = "enemies.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/enemies.png",
      imagewidth = 512,
      imageheight = 1920,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 60,
      tiles = {
        {
          id = 0,
          type = "barnacle",
          properties = {
            ["deadid"] = 2
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 18,
                y = 127,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 18, y = -19 },
                  { x = 11, y = -54 },
                  { x = 18, y = -82 },
                  { x = 26, y = -104 },
                  { x = 66, y = -103 },
                  { x = 78, y = -77 },
                  { x = 78, y = -59 },
                  { x = 76, y = -18 },
                  { x = 94, y = 2 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 150
            },
            {
              tileid = 1,
              duration = 100
            }
          }
        },
        {
          id = 1,
          type = "barnacle",
          properties = {
            ["deadid"] = 2
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 18,
                y = 127,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 18, y = -19 },
                  { x = 11, y = -54 },
                  { x = 18, y = -82 },
                  { x = 26, y = -104 },
                  { x = 66, y = -103 },
                  { x = 78, y = -77 },
                  { x = 78, y = -59 },
                  { x = 76, y = -18 },
                  { x = 94, y = 2 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 150
            },
            {
              tileid = 1,
              duration = 100
            }
          }
        }
      }
    },
    {
      name = "spritesheet_tiles",
      firstgid = 221,
      filename = "tiles.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/spritesheet_tiles.png",
      imagewidth = 1024,
      imageheight = 2048,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 128,
      tiles = {
        {
          id = 1,
          properties = {
            ["colType"] = "liquid",
            ["imageName"] = "waterTop_high.png",
            ["stuff"] = "water"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 12.8,
                width = 128,
                height = 115.2,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 9,
          properties = {
            ["colType"] = "liquid",
            ["imageName"] = "water.png",
            ["stuff"] = "water"
          }
        },
        {
          id = 24,
          type = "crate",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 2,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 12.8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 1, y = 0.2 },
                  { x = 13, y = -12.8 },
                  { x = 115, y = -12.8 },
                  { x = 127, y = -0.8 },
                  { x = 127, y = 102.2 },
                  { x = 115, y = 115.2 },
                  { x = 13, y = 115.2 },
                  { x = 1, y = 102.2 }
                },
                properties = {
                  ["colFriction"] = true,
                  ["colType"] = "massy",
                  ["mass"] = 1
                }
              }
            }
          }
        },
        {
          id = 27,
          type = "ladder",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 35,
          type = "ladder",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 42,
          type = "decoration"
        },
        {
          id = 43,
          type = "decoration"
        },
        {
          id = 50,
          type = "decoration"
        },
        {
          id = 73,
          type = "button",
          properties = {
            ["down"] = 73,
            ["state"] = "down",
            ["up"] = 81
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 98,
                width = 128,
                height = 30,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "button",
                shape = "rectangle",
                x = 28,
                y = 80,
                width = 69,
                height = 17,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 81,
          type = "button",
          properties = {
            ["down"] = 73,
            ["state"] = "up",
            ["up"] = 81
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 98,
                width = 128,
                height = 30,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "button",
                shape = "rectangle",
                x = 20,
                y = 44,
                width = 87,
                height = 54,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 89,
          type = "button",
          properties = {
            ["down"] = 89,
            ["state"] = "down",
            ["up"] = 97
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 98,
                width = 128,
                height = 30,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "button",
                shape = "rectangle",
                x = 30,
                y = 79,
                width = 68,
                height = 19,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 97,
          type = "button",
          properties = {
            ["down"] = 89,
            ["state"] = "up",
            ["up"] = 97
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 98,
                width = 128,
                height = 30,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "button",
                shape = "rectangle",
                x = 20,
                y = 44,
                width = 87,
                height = 54,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 99,
          type = "decoration"
        },
        {
          id = 106,
          type = "switch",
          properties = {
            ["centre"] = 114,
            ["direction"] = "right",
            ["left"] = 122
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "base",
                shape = "rectangle",
                x = 12.8,
                y = 89.6,
                width = 102.4,
                height = 38.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 38.4,
                y = 32,
                width = 89.6,
                height = 57.6,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 113,
          type = "bouncer",
          properties = {
            ["bounceupid"] = 105
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 64,
                width = 128,
                height = 38.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 114,
          type = "switch",
          properties = {
            ["direction"] = "centre",
            ["left"] = 122,
            ["right"] = 106
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "base",
                shape = "rectangle",
                x = 12.8,
                y = 89.6,
                width = 102.4,
                height = 38.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 38.4,
                y = 12.8,
                width = 51.2,
                height = 76.8,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 120,
          properties = {
            ["colType"] = "liquid",
            ["imageName"] = "waterTop_low.png",
            ["stuff"] = "water"
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 51.2,
                width = 128,
                height = 76.8,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 121,
          type = "spikes",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 0,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 16, y = -64 },
                  { x = 112, y = -64 },
                  { x = 128, y = 0 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 122,
          type = "switch",
          properties = {
            ["centre"] = 114,
            ["direction"] = "left",
            ["right"] = 106
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "base",
                shape = "rectangle",
                x = 12.8,
                y = 89.6,
                width = 102.4,
                height = 38.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              },
              {
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 0,
                y = 38.4,
                width = 89.6,
                height = 51.2,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 123,
          type = "platform",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 0,
                y = 0,
                width = 128,
                height = 32,
                rotation = 0,
                visible = true,
                properties = {
                  ["colFriction"] = false,
                  ["colType"] = "massy",
                  ["mass"] = 10000
                }
              }
            }
          }
        }
      }
    },
    {
      name = "water_enemies",
      firstgid = 349,
      filename = "water enemies.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/water_enemies.png",
      imagewidth = 384,
      imageheight = 384,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 9,
      tiles = {
        {
          id = 0,
          type = "mine",
          properties = {
            ["flashid"] = 2
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 12.8,
                y = 12.8,
                width = 102.4,
                height = 102.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 500
            }
          }
        },
        {
          id = 1,
          type = "mine",
          properties = {
            ["flashid"] = 2
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "rectangle",
                x = 12.8,
                y = 12.8,
                width = 102.4,
                height = 102.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          },
          animation = {
            {
              tileid = 0,
              duration = 100
            },
            {
              tileid = 1,
              duration = 500
            }
          }
        },
        {
          id = 3,
          type = "jelly",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 12.8,
                y = 64,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 0, y = -12.8 },
                  { x = 51.2, y = -51.2 },
                  { x = 102.4, y = -12.8 },
                  { x = 102.4, y = 0 },
                  { x = 89.6, y = 51.2 },
                  { x = 64, y = 64 },
                  { x = 38.4, y = 64 },
                  { x = 12.8, y = 51.2 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 0.3
                }
              }
            }
          },
          animation = {
            {
              tileid = 3,
              duration = 220
            },
            {
              tileid = 4,
              duration = 220
            }
          }
        },
        {
          id = 4,
          type = "jelly",
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 12.8,
                y = 64,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 0, y = -12.8 },
                  { x = 51.2, y = -51.2 },
                  { x = 102.4, y = -12.8 },
                  { x = 102.4, y = 0 },
                  { x = 89.6, y = 51.2 },
                  { x = 64, y = 64 },
                  { x = 38.4, y = 64 },
                  { x = 12.8, y = 51.2 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 0.3
                }
              }
            }
          },
          animation = {
            {
              tileid = 4,
              duration = 220
            },
            {
              tileid = 3,
              duration = 220
            }
          }
        },
        {
          id = 6,
          type = "fish",
          properties = {
            ["deadid"] = 8
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 3,
                name = "",
                type = "",
                shape = "polygon",
                x = 25.6,
                y = 51.2,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 89.6, y = 12.8 },
                  { x = 0, y = 25.6 },
                  { x = -25.6, y = 12.8 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 0.5
                }
              }
            }
          },
          animation = {
            {
              tileid = 6,
              duration = 180
            },
            {
              tileid = 7,
              duration = 180
            }
          }
        },
        {
          id = 7,
          type = "fish",
          properties = {
            ["deadid"] = 8
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 1,
                name = "",
                type = "",
                shape = "polygon",
                x = 25.6,
                y = 51.2,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 89.6, y = 12.8 },
                  { x = 0, y = 25.6 },
                  { x = -25.6, y = 12.8 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 0.5
                }
              }
            }
          },
          animation = {
            {
              tileid = 6,
              duration = 180
            },
            {
              tileid = 7,
              duration = 180
            }
          }
        }
      }
    },
    {
      name = "nautical_objects",
      firstgid = 358,
      filename = "nautical_objects.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/platformerPack_nautical_vector - redux remix - objects.png",
      imagewidth = 1152,
      imageheight = 640,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 128,
        height = 128
      },
      properties = {},
      terrains = {},
      tilecount = 45,
      tiles = {
        {
          id = 1,
          type = "decoration",
          animation = {
            {
              tileid = 1,
              duration = 500
            },
            {
              tileid = 2,
              duration = 500
            }
          }
        },
        {
          id = 3,
          type = "decoration"
        },
        {
          id = 4,
          type = "decoration"
        },
        {
          id = 5,
          type = "decoration"
        },
        {
          id = 6,
          type = "decoration"
        },
        {
          id = 7,
          type = "decoration"
        },
        {
          id = 10,
          type = "decoration"
        },
        {
          id = 11,
          type = "decoration"
        },
        {
          id = 12,
          type = "decoration"
        },
        {
          id = 13,
          type = "decoration"
        },
        {
          id = 14,
          type = "decoration"
        },
        {
          id = 15,
          type = "decoration"
        },
        {
          id = 16,
          type = "decoration"
        },
        {
          id = 19,
          type = "decoration"
        },
        {
          id = 20,
          type = "decoration"
        },
        {
          id = 21,
          type = "decoration"
        },
        {
          id = 22,
          type = "decoration"
        },
        {
          id = 23,
          type = "decoration"
        },
        {
          id = 24,
          type = "decoration"
        },
        {
          id = 25,
          type = "decoration"
        },
        {
          id = 28,
          type = "decoration"
        },
        {
          id = 29,
          type = "decoration"
        },
        {
          id = 30,
          type = "decoration"
        },
        {
          id = 31,
          type = "decoration"
        },
        {
          id = 32,
          type = "decoration"
        },
        {
          id = 33,
          type = "decoration"
        },
        {
          id = 34,
          type = "decoration"
        },
        {
          id = 37,
          type = "decoration"
        },
        {
          id = 38,
          type = "decoration"
        },
        {
          id = 39,
          type = "decoration"
        },
        {
          id = 41,
          type = "decoration"
        },
        {
          id = 42,
          type = "decoration"
        },
        {
          id = 43,
          type = "decoration"
        }
      }
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "Image Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      image = "../art/blue_land.png",
      properties = {
        ["floating"] = true
      }
    },
    {
      type = "tilelayer",
      name = "Water Layer",
      x = 0,
      y = 0,
      width = 200,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["layerType"] = "liquid"
      },
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAAAAAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAN4AAADeAAAA3gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAADmAAAA5gAAAOYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=="
    },
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 200,
      height = 20,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "base64",
      data = "CQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAE0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAGEAAAAJAAAAWQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACYAAABNAAAAHgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAE0AAABNAAAATQAAAE0AAABlAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF0AAAAOAAAARgAAAEYAAABGAAAARgAAABYAAABlAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAE0AAABNAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABdAAAADgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAABYAAABNAAAAAAAAAAAAAABNAAAATQAAAE0AAABNAAAATQAAAE0AAAAOAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANgAAAE0AAAAuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAA4AAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAANgAAAE0AAAAuAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF0AAAAOAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAAAAAAAAAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA2AAAATQAAAC4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABdAAAADgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADYAAABNAAAALgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAE0AAABNAAAATQAAAE0AAAAeAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAmAAAATQAAAB4AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAA4AAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF0AAABNAAAATQAAAE0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADYAAABNAAAALgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOAAAARgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF0AAAAOAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAATQAAAE0AAAAAAAAATQAAAE0AAABNAAAATQAAAE0AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABdAAAADgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABdAAAADgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAAAAAABGAAAARgAAAAAAAABGAAAARgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAA4AAAAAAAAAAAAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAXQAAAA4AAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFAQAABQEAAAUBAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAAHgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAfQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAAOAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAHUAAAB1AAAAdQAAAE0AAABGAAAARgAAAEYAAABGAAAARgAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABGAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAAAOAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQEAAAUBAAAFAQAABQEAAAUBAAD4AAAABQEAAAUBAAAFAQAABQEAAAUBAAAFAQAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAE0AAABNAAAATQAAAE0AAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQEAAAUBAAAAAAAAAAAAAAABAAD1AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQEAAAUBAAAAAAAAAAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAE0AAABNAAAATQAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAARgAAAEYAAABGAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABQEAAAUBAAAFAQAABQEAAAUBAAAFAQAABQEAAAAAAAAAAAAARgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA=="
    },
    {
      type = "objectgroup",
      name = "Things",
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      draworder = "topdown",
      properties = {},
      objects = {
        {
          id = 182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 135,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 324,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "buttonBlueEnd",
          type = "",
          shape = "rectangle",
          x = 13056,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 318,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 199,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 201,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 202,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7424,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 157,
          visible = true,
          properties = {}
        },
        {
          id = 203,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 204,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 205,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 206,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 207,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 208,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 209,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 210,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 211,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 212,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 213,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 214,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 215,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 219,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 230,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 231,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6144,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 232,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 233,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 234,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 249,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 264,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 266,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 268,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 1420.8,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 269,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3328,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 270,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 1036.8,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 271,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 272,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 273,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 274,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4864,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 275,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5888,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 277,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1907.2,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 278,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7808,
          y = 1894.4,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 279,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7936,
          y = 1881.6,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 280,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8064,
          y = 1868.8,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 281,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 1856,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 283,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6272,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 303,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 304,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 305,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 306,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 307,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 308,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 309,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 310,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 311,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 312,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 313,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 314,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 315,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 316,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 317,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 318,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 319,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3328,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 320,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3456,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 321,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 323,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 327,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 328,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6272,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 329,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 330,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 331,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 332,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5888,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 333,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 334,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4992,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4864,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 339,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4736,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 340,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4608,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 341,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 342,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4352,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 343,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7552,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 344,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7808,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7936,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 347,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8064,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 349,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8320,
          y = 1472,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 354,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7168,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 154,
          visible = true,
          properties = {}
        },
        {
          id = 355,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8448,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 131,
          visible = true,
          properties = {}
        },
        {
          id = 357,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10368,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        },
        {
          id = 358,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 359,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 362,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 365,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 367,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 368,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 369,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 370,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 395,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 398,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10880,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 134,
          visible = true,
          properties = {}
        },
        {
          id = 400,
          name = "plat1",
          type = "",
          shape = "rectangle",
          x = 11520,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {
            ["track"] = "plat1track"
          }
        },
        {
          id = 401,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12032,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12160,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 403,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12288,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 404,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12416,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 405,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12544,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 406,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12672,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 407,
          name = "plat1track",
          type = "track",
          shape = "polyline",
          x = 11648,
          y = 768,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = -64, y = 0 },
            { x = 1088, y = 0 }
          },
          properties = {}
        },
        {
          id = 411,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12288,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 420,
          name = "",
          type = "",
          shape = "rectangle",
          x = 13312,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 1073741985,
          visible = true,
          properties = {}
        },
        {
          id = 423,
          name = "",
          type = "",
          shape = "rectangle",
          x = 13824,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 1073741985,
          visible = true,
          properties = {}
        },
        {
          id = 425,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 365,
          visible = true,
          properties = {}
        },
        {
          id = 426,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 149,
          visible = true,
          properties = {}
        },
        {
          id = 427,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 387,
          visible = true,
          properties = {}
        },
        {
          id = 428,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4096,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 387,
          visible = true,
          properties = {}
        },
        {
          id = 429,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 382,
          visible = true,
          properties = {}
        },
        {
          id = 430,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 382,
          visible = true,
          properties = {}
        },
        {
          id = 431,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 382,
          visible = true,
          properties = {}
        },
        {
          id = 432,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4224,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 359,
          visible = true,
          properties = {}
        },
        {
          id = 433,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 434,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 435,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9728,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 436,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 349,
          visible = true,
          properties = {}
        },
        {
          id = 437,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 438,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 439,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 440,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 441,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 442,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 443,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 444,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 445,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 446,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 447,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9728,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 448,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 449,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 320,
          visible = true,
          properties = {}
        },
        {
          id = 450,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10496,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 355,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
