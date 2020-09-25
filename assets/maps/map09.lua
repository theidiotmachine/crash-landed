return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.1",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 200,
  height = 51,
  tilewidth = 128,
  tileheight = 128,
  nextobjectid = 1699,
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
        },
        {
          id = 15,
          type = "fish",
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
                y = 76.8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 12.8, y = -25.6 },
                  { x = 51.2, y = -25.6 },
                  { x = 76.8, y = -12.8 },
                  { x = 89.6, y = 12.8 },
                  { x = 64, y = 25.6 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 0.1
                }
              }
            }
          },
          animation = {
            {
              tileid = 15,
              duration = 100
            },
            {
              tileid = 16,
              duration = 100
            }
          }
        },
        {
          id = 17,
          properties = {
            ["deadid"] = 17
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
          id = 32,
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
                id = 1,
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
                  { x = 0, y = 0 },
                  { x = 12.8, y = -12.8 },
                  { x = 115.2, y = -12.8 },
                  { x = 128, y = 0 },
                  { x = 128, y = 102.4 },
                  { x = 115.2, y = 115.2 },
                  { x = 12.8, y = 115.2 },
                  { x = 0, y = 102.4 }
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
          id = 36,
          type = "fallingTile",
          properties = {
            ["flashId"] = 52
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
                  ["colType"] = "static"
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
      tilecount = 15,
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
        },
        {
          id = 9,
          type = "bigFish",
          properties = {
            ["bodyid"] = 10,
            ["deadid"] = 13,
            ["tailid"] = 11
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
                y = 64,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 51.2, y = -51.2 },
                  { x = 128, y = -51.2 },
                  { x = 128, y = 51.2 },
                  { x = 38.4, y = 38.4 }
                },
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 2
                }
              }
            }
          },
          animation = {
            {
              tileid = 9,
              duration = 200
            },
            {
              tileid = 12,
              duration = 200
            }
          }
        }
      }
    },
    {
      name = "nautical_objects",
      firstgid = 364,
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
    },
    {
      name = "nautical_tiles",
      firstgid = 409,
      filename = "nautical_tiles.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/platformerPack_nautical_vector - redux remix - tiles.png",
      imagewidth = 1280,
      imageheight = 896,
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
      tilecount = 70,
      tiles = {
        {
          id = 0,
          properties = {
            ["stuff"] = "wood"
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
                height = 38.4,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 1,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 128, y = 89.6 },
                  { x = 0, y = 38.4 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 2,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 0, y = 38.4 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 3,
          properties = {
            ["stuff"] = "wood"
          }
        },
        {
          id = 4,
          properties = {
            ["stuff"] = "wood"
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
          id = 5,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 0, y = 89.6 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 10,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 115.2, y = 64 },
                  { x = 76.8, y = 25.6 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 11,
          properties = {
            ["stuff"] = "wood"
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
          id = 12,
          properties = {
            ["stuff"] = "wood"
          }
        },
        {
          id = 13,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 128, y = 51.2 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 14,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 0, y = -128 },
                  { x = 128, y = -128 },
                  { x = 51.2, y = -115.2 },
                  { x = 12.8, y = -64 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 20,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 12.8, y = 64 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 21,
          properties = {
            ["stuff"] = "wood"
          }
        },
        {
          id = 22,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 102.4, y = 76.8 },
                  { x = 51.2, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 23,
          properties = {
            ["stuff"] = "wood"
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
                x = 38.4,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 0, y = 38.4 },
                  { x = 12.8, y = 38.4 },
                  { x = 51.2, y = 128 },
                  { x = 89.6, y = 128 },
                  { x = 89.6, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 24,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 89.6, y = 0 },
                  { x = 89.6, y = 38.4 },
                  { x = 64, y = 38.4 },
                  { x = 38.4, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 40,
          properties = {
            ["stuff"] = "wood"
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
                x = 64,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 64, y = 0 },
                  { x = 64, y = 128 },
                  { x = -64, y = 128 },
                  { x = 0, y = 102.4 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 41,
          properties = {
            ["stuff"] = "wood"
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
                x = 128,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = -128, y = 0 },
                  { x = -128, y = -128 },
                  { x = -64, y = -128 },
                  { x = -64, y = -12.8 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 42,
          properties = {
            ["stuff"] = "wood"
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
                x = 64,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 64, y = 0 },
                  { x = 64, y = 128 },
                  { x = -64, y = 128 },
                  { x = 0, y = 102.4 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 43,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 64, y = 0 },
                  { x = 64, y = 102.4 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 44,
          properties = {
            ["stuff"] = "wood"
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
                x = 64,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 64, y = 0 },
                  { x = 64, y = 128 },
                  { x = -64, y = 128 },
                  { x = 0, y = 102.4 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 45,
          properties = {
            ["stuff"] = "wood"
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
                  { x = 64, y = 0 },
                  { x = 64, y = 102.4 },
                  { x = 128, y = 128 },
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "industrial ground",
      firstgid = 479,
      filename = "industrial ground.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/platformerPack_industrial_vector - redux remix - ground.png",
      imagewidth = 896,
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
      tilecount = 28,
      tiles = {
        {
          id = 2,
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
                width = 31,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 96,
                y = 0,
                width = 32,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 3,
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
                width = 31,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {}
              },
              {
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 96,
                y = 0,
                width = 32,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {}
              }
            }
          }
        },
        {
          id = 6,
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
          id = 13,
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
          id = 14,
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
                shape = "polyline",
                x = 0,
                y = 44,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 0, y = -33 },
                  { x = 10, y = -43 },
                  { x = 128, y = -44 },
                  { x = 128, y = 84 },
                  { x = 0, y = 0 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 16,
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
          id = 17,
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
                x = 128,
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = -128, y = 0 },
                  { x = -128, y = 128 },
                  { x = -25.6, y = 102.4 },
                  { x = 0, y = 51.2 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 22,
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
                  { x = 0, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 23,
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
                  { x = 128, y = 128 }
                },
                properties = {}
              }
            }
          }
        },
        {
          id = 26,
          properties = {
            ["collidable"] = false
          }
        }
      }
    },
    {
      name = "industrial tiles",
      firstgid = 507,
      filename = "industrial tiles.tsx",
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      image = "../art/platformerPack_industrial_vector - redux remix - tiles.png",
      imagewidth = 1280,
      imageheight = 1536,
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
      tilecount = 120,
      tiles = {
        {
          id = 0,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                shape = "polyline",
                x = 0,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 16, y = -16 },
                  { x = 112, y = -16 },
                  { x = 128, y = 0 },
                  { x = 128, y = 96 },
                  { x = 112, y = 112 },
                  { x = 16, y = 112 },
                  { x = 0, y = 96 },
                  { x = 0, y = 0 }
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
          id = 1,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                shape = "polyline",
                x = 0,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 16, y = -16 },
                  { x = 112, y = -16 },
                  { x = 128, y = 0 },
                  { x = 128, y = 96 },
                  { x = 112, y = 112 },
                  { x = 16, y = 112 },
                  { x = 0, y = 96 },
                  { x = 0, y = 0 }
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
          id = 2,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                y = 12.8,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 12.8, y = -12.8 },
                  { x = 115.2, y = -12.8 },
                  { x = 128, y = 0 },
                  { x = 128, y = 89.6 },
                  { x = 115.2, y = 115.2 },
                  { x = 25.6, y = 115.2 },
                  { x = 0, y = 102.4 }
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
          id = 3,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                shape = "polyline",
                x = 0,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 16, y = -16 },
                  { x = 112, y = -16 },
                  { x = 128, y = 0 },
                  { x = 128, y = 96 },
                  { x = 112, y = 112 },
                  { x = 16, y = 112 },
                  { x = 0, y = 96 },
                  { x = 0, y = 0 }
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
          id = 4,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                shape = "polyline",
                x = 0,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 16, y = -16 },
                  { x = 112, y = -16 },
                  { x = 128, y = 0 },
                  { x = 128, y = 96 },
                  { x = 112, y = 112 },
                  { x = 16, y = 112 },
                  { x = 0, y = 96 },
                  { x = 0, y = 0 }
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
          id = 5,
          type = "crate",
          properties = {
            ["crateType"] = "metal"
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
                shape = "polyline",
                x = 0,
                y = 16,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polyline = {
                  { x = 0, y = 0 },
                  { x = 16, y = -16 },
                  { x = 112, y = -16 },
                  { x = 128, y = 0 },
                  { x = 128, y = 96 },
                  { x = 112, y = 112 },
                  { x = 16, y = 112 },
                  { x = 0, y = 96 },
                  { x = 0, y = 0 }
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
          id = 6,
          type = "crate"
        },
        {
          id = 7,
          type = "crate"
        },
        {
          id = 8,
          type = "sign"
        },
        {
          id = 9,
          type = "sign"
        },
        {
          id = 10,
          type = "sign",
          properties = {
            ["signType"] = "screen1"
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
          }
        },
        {
          id = 11,
          type = "sign"
        },
        {
          id = 12,
          type = "sign"
        },
        {
          id = 13,
          type = "sign"
        },
        {
          id = 14,
          type = "sign",
          properties = {
            ["signType"] = "screen1"
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
          }
        },
        {
          id = 15,
          type = "sign",
          properties = {
            ["signType"] = "screen1"
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
          }
        },
        {
          id = 16,
          type = "sign",
          properties = {
            ["signType"] = "screen1"
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
          }
        },
        {
          id = 17,
          type = "sign"
        },
        {
          id = 18,
          type = "sign"
        },
        {
          id = 19,
          type = "ladder"
        },
        {
          id = 20,
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
          id = 21,
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
                x = 12.8,
                y = 0,
                width = 102.4,
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
          id = 22,
          type = "conveyer",
          properties = {
            ["moving"] = "off"
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
                height = 51.2,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "conveyer"
                }
              }
            }
          }
        },
        {
          id = 23,
          type = "conveyer",
          properties = {
            ["moving"] = "off"
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
                height = 51.2,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "conveyer"
                }
              }
            }
          }
        },
        {
          id = 24,
          type = "conveyer",
          properties = {
            ["moving"] = "off"
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
                height = 51.2,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "conveyer"
                }
              }
            }
          }
        },
        {
          id = 25,
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
                y = 0,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 25.6, y = 51.2 },
                  { x = 102.4, y = 51.2 },
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
          id = 30,
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
          id = 31,
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
                x = 12.8,
                y = 0,
                width = 102.4,
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
          id = 32,
          type = "conveyer"
        },
        {
          id = 33,
          type = "conveyer"
        },
        {
          id = 34,
          type = "conveyer"
        },
        {
          id = 35,
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
                  { x = 25.6, y = -51.2 },
                  { x = 102.4, y = -51.2 },
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
          id = 42,
          type = "crate"
        },
        {
          id = 43,
          type = "crate"
        },
        {
          id = 44,
          type = "crate"
        },
        {
          id = 45,
          type = "crate",
          properties = {
            ["crateType"] = "fuel"
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
                y = 0,
                width = 102.4,
                height = 128,
                rotation = 0,
                visible = true,
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
          id = 46,
          type = "decoration"
        },
        {
          id = 52,
          type = "crate"
        },
        {
          id = 53,
          type = "crate"
        },
        {
          id = 54,
          type = "crate"
        },
        {
          id = 55,
          type = "crate",
          properties = {
            ["crateType"] = "fuel"
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
                y = 38.4,
                width = 128,
                height = 89.6,
                rotation = 0,
                visible = true,
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
          id = 60,
          type = "sign"
        },
        {
          id = 64,
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
                x = -1,
                y = 43,
                width = 130,
                height = 52,
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
        },
        {
          id = 66,
          type = "sign",
          properties = {
            ["signType"] = "greenWarn"
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
                  ["colType"] = "none"
                }
              }
            }
          }
        },
        {
          id = 69,
          type = "light"
        },
        {
          id = 70,
          type = "sign"
        },
        {
          id = 71,
          type = "sign"
        },
        {
          id = 72,
          type = "sign"
        },
        {
          id = 73,
          type = "cog",
          properties = {
            ["spinning"] = true
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
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 74,
          type = "sign"
        },
        {
          id = 76,
          type = "light",
          properties = {
            ["green"] = 78,
            ["lightType"] = "blue",
            ["lightY"] = -35,
            ["off"] = 112,
            ["red"] = 87
          }
        },
        {
          id = 77,
          type = "light"
        },
        {
          id = 78,
          type = "light",
          properties = {
            ["blue"] = 76,
            ["lightType"] = "green",
            ["lightY"] = -40,
            ["off"] = 112
          }
        },
        {
          id = 79,
          type = "fan",
          properties = {
            ["direction"] = "right"
          }
        },
        {
          id = 80,
          type = "sign",
          properties = {
            ["signType"] = "arrowl"
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
          id = 81,
          type = "sign",
          properties = {
            ["signType"] = "arrowc"
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
          id = 82,
          type = "sign",
          properties = {
            ["signType"] = "arrowr"
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
          id = 83,
          type = "light"
        },
        {
          id = 84,
          type = "light",
          properties = {
            ["lightType"] = "green",
            ["lightY"] = 26,
            ["off"] = 113,
            ["red"] = 86
          }
        },
        {
          id = 85,
          type = "light"
        },
        {
          id = 86,
          type = "light",
          properties = {
            ["green"] = 84,
            ["lightType"] = "red",
            ["lightY"] = 26,
            ["off"] = 114
          }
        },
        {
          id = 87,
          type = "light",
          properties = {
            ["blue"] = 69,
            ["green"] = 71,
            ["lightType"] = "red",
            ["lightY"] = -40,
            ["off"] = 101
          }
        },
        {
          id = 89,
          type = "fan",
          properties = {
            ["direction"] = "left"
          }
        },
        {
          id = 90,
          type = "slime",
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
                y = 115.2,
                width = 128,
                height = 12.8,
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
          id = 91,
          type = "slime",
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
                y = 115.2,
                width = 128,
                height = 12.8,
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
          id = 92,
          type = "slime",
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
                y = 115.2,
                width = 128,
                height = 12.8,
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
          id = 93,
          type = "slime",
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
                y = 115.2,
                width = 128,
                height = 12.8,
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
          id = 94,
          type = "slime",
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
                y = 115.2,
                width = 128,
                height = 12.8,
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
          id = 95,
          type = "arrow",
          properties = {
            ["off"] = 96,
            ["state"] = "on"
          }
        },
        {
          id = 96,
          type = "arrow",
          properties = {
            ["on"] = 95,
            ["state"] = "off"
          }
        },
        {
          id = 97,
          type = "button"
        },
        {
          id = 98,
          type = "arrow",
          properties = {
            ["off"] = 99,
            ["state"] = "on"
          }
        },
        {
          id = 99,
          type = "arrow",
          properties = {
            ["on"] = 98,
            ["state"] = "off"
          }
        },
        {
          id = 100,
          type = "slime",
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
                height = 16,
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
          id = 101,
          type = "slime"
        },
        {
          id = 102,
          type = "slime",
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
                height = 16,
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
          id = 105,
          type = "p1start"
        },
        {
          id = 106,
          type = "button",
          properties = {
            ["down"] = 107,
            ["state"] = "up"
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
                type = "button",
                shape = "rectangle",
                x = 25.6,
                y = 76.8,
                width = 76.8,
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
          id = 107,
          type = "button",
          properties = {
            ["down"] = 106,
            ["state"] = "up"
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
                type = "button",
                shape = "rectangle",
                x = 25.6,
                y = 102.4,
                width = 76.8,
                height = 25.6,
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
          id = 108,
          type = "door",
          properties = {
            ["doorType"] = "slideUp",
            ["state"] = "closed"
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
                y = 0,
                width = 63,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 1
                }
              }
            }
          }
        },
        {
          id = 109,
          type = "fan",
          properties = {
            ["direction"] = "down"
          }
        },
        {
          id = 111,
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
                shape = "rectangle",
                x = 0,
                y = 16,
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
        },
        {
          id = 112,
          type = "light",
          properties = {
            ["blue"] = 76,
            ["green"] = 78,
            ["lightType"] = "off",
            ["lightY"] = -40,
            ["red"] = 87
          }
        },
        {
          id = 113,
          type = "light",
          properties = {
            ["green"] = 84,
            ["lightType"] = "off",
            ["red"] = 86
          }
        },
        {
          id = 114,
          type = "switch",
          properties = {
            ["centre"] = 115,
            ["direction"] = "left",
            ["right"] = 116
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
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 12.8,
                y = 41.6,
                width = 68.2,
                height = 70.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              },
              {
                id = 3,
                name = "",
                type = "",
                shape = "polygon",
                x = 17,
                y = 127,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = -2, y = 1 },
                  { x = 14, y = -15 },
                  { x = 80, y = -15 },
                  { x = 96, y = 1 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 115,
          properties = {
            ["direction"] = "centre",
            ["left"] = 114,
            ["right"] = 116
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
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 38.4,
                y = 41.6,
                width = 51.2,
                height = 70.4,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              },
              {
                id = 3,
                name = "",
                type = "",
                shape = "polygon",
                x = 12.8,
                y = 128,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 2.2, y = 0 },
                  { x = 18.2, y = -16 },
                  { x = 84.2, y = -16 },
                  { x = 100.2, y = 0 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 116,
          properties = {
            ["centre"] = 115,
            ["direction"] = "right",
            ["left"] = 114
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
                id = 2,
                name = "",
                type = "switch",
                shape = "rectangle",
                x = 46,
                y = 54,
                width = 69,
                height = 58,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "none"
                }
              },
              {
                id = 3,
                name = "",
                type = "",
                shape = "polygon",
                x = 16,
                y = 127,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = -1, y = 1 },
                  { x = 15, y = -15 },
                  { x = 81, y = -15 },
                  { x = 97, y = 1 }
                },
                properties = {
                  ["colType"] = "static"
                }
              }
            }
          }
        },
        {
          id = 118,
          type = "door",
          properties = {
            ["doorType"] = "slideDown",
            ["state"] = "closed"
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
                y = 0,
                width = 63,
                height = 128,
                rotation = 0,
                visible = true,
                properties = {
                  ["colType"] = "massy",
                  ["mass"] = 1
                }
              }
            }
          }
        },
        {
          id = 119,
          type = "fan",
          properties = {
            ["direction"] = "up"
          }
        }
      }
    },
    {
      name = "spritesheet_items",
      firstgid = 627,
      filename = "items.tsx",
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
          properties = {
            ["downTileid"] = 17
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
                x = 25.6,
                y = 38.4,
                width = 76.8,
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
          id = 8,
          type = "flag",
          properties = {
            ["downTileid"] = 24
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
          properties = {
            ["downTileid"] = 17
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
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 25.6,
                y = 38.4,
                width = 76.8,
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
          id = 16,
          type = "flag",
          properties = {
            ["downTileid"] = 24
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
                x = 25.6,
                y = 38.4,
                width = 76.8,
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
          id = 21,
          type = "flag",
          properties = {
            ["downTileid"] = 0
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
              tileid = 25,
              duration = 200
            },
            {
              tileid = 2,
              duration = 200
            }
          }
        },
        {
          id = 26,
          type = "flag",
          properties = {
            ["downTileid"] = 0
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
                id = 2,
                name = "",
                type = "",
                shape = "rectangle",
                x = 25.6,
                y = 38.4,
                width = 76.8,
                height = 51.2,
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
    }
  },
  layers = {
    {
      type = "imagelayer",
      name = "Image Layer 1",
      visible = true,
      opacity = 1,
      offsetx = 3085,
      offsety = 1964,
      image = "../art/indus_bg1.png",
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
      height = 51,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["layerType"] = "liquid"
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 230, 230, 0, 0, 0, 0, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 230, 230, 0, 0, 0, 0, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 222, 222, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 230, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "BG",
      x = 0,
      y = 0,
      width = 200,
      height = 51,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = false
      },
      encoding = "lua",
      data = {
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 517, 505, 517, 505, 519, 505, 517, 505, 505, 505, 505, 505, 505, 505, 505, 505, 521, 522, 522, 522, 523, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 517, 505, 519, 505, 517, 505, 519, 505, 517, 505, 524, 525, 525, 515, 505, 505, 505, 521, 522, 522, 522, 523, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 519, 505, 517, 505, 519, 505, 519, 505, 517, 505, 519, 505, 505, 505, 505, 505, 505, 505, 521, 522, 522, 522, 523, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 533, 533, 533, 533, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 521, 522, 522, 522, 523, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 533, 533, 533, 533, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 519, 505, 519, 505, 519, 505, 519, 505, 521, 522, 523, 505, 505, 505, 505, 505, 505, 505, 505, 505, 519, 519, 519, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 0, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 533, 533, 533, 533, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 543, 544, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 533, 533, 533, 533, 533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 505, 0, 0, 0, 0, 0, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 567, 0, 0, 567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 568, 0, 0, 568, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 505, 505, 505, 505, 505, 505, 505, 505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 557, 0, 0, 557, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 558, 0, 0, 558, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 502, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
    },
    {
      type = "tilelayer",
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 200,
      height = 51,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "lua",
      data = {
        0, 0, 492, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 492, 500, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 500, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 0, 500, 500, 500, 500, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 0, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 500, 0, 0, 0, 0, 0, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 0, 0, 0, 0, 0, 500, 0, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 500, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 502, 500, 500, 0, 0, 0, 500, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 500, 0, 0, 0, 0, 0, 500, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 500, 0, 500, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 502, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 500, 0, 0, 500, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 500, 500, 0, 0, 0, 0, 0, 500, 0, 500, 500, 485, 0, 0, 0, 0, 0, 492, 500, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 500, 0, 0, 500, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 0, 0, 0, 0, 492, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 500, 0, 500, 500, 500, 485, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 500, 500, 500, 0, 0, 500, 500, 500, 500, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 492, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 485, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 495, 488, 488, 488, 488, 496, 0, 0, 0, 0, 492, 0, 500, 500, 0, 500, 500, 0, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 492, 500, 0, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 0, 500, 500, 0, 0, 0,
        0, 0, 0, 502, 500, 500, 501, 0, 0, 0, 502, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 501, 0, 502, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 500, 500, 500, 0, 500, 500, 500, 500, 0, 0, 0, 500, 500, 500, 500, 0, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 502, 500, 500, 500, 500, 500, 500, 500, 500, 500, 501, 0, 0, 0, 502, 500, 500, 500, 500, 500, 500, 500, 500, 500, 501, 0, 0, 502, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 501, 0, 0, 0, 502, 500, 500, 0, 0, 0, 0, 0, 500, 500, 501, 0, 0, 0, 502, 500, 500, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 485, 0, 492, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 495, 488, 488, 488, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 501, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 500, 500, 500, 500, 500, 485, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 502, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 502, 501, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 502, 500, 500, 500, 500, 500, 500, 501, 0, 502, 501, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 500, 500, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 501, 0, 0, 0, 0, 502, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 502, 500, 501, 502, 500, 501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
        0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 500, 0, 0, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 500, 500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
      }
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
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 135,
          visible = true,
          properties = {}
        },
        {
          id = 666,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 130,
          visible = true,
          properties = {}
        },
        {
          id = 688,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11648,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 689,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11520,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 690,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11776,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 691,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11904,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 692,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12032,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 693,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12032,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 694,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12160,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 695,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12288,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 696,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12416,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 697,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12544,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 698,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12672,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 699,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12800,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 700,
          name = "",
          type = "",
          shape = "rectangle",
          x = 13056,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 701,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12928,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 732,
          name = "SpacemRINEPOOP",
          type = "track",
          shape = "polyline",
          x = 8320,
          y = 3840,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 1280, y = 0 }
          },
          properties = {}
        },
        {
          id = 746,
          name = "track2",
          type = "track",
          shape = "polyline",
          x = 19272,
          y = 3200,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 880, y = 0 }
          },
          properties = {}
        },
        {
          id = 747,
          name = "track3",
          type = "track",
          shape = "polyline",
          x = 20168,
          y = 2944,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 880, y = 0 }
          },
          properties = {}
        },
        {
          id = 748,
          name = "track4",
          type = "track",
          shape = "polyline",
          x = 20808,
          y = 3328,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 1008, y = 0 }
          },
          properties = {}
        },
        {
          id = 762,
          name = "",
          type = "",
          shape = "rectangle",
          x = 13568,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 137,
          visible = true,
          properties = {}
        },
        {
          id = 763,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18944,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 138,
          visible = true,
          properties = {}
        },
        {
          id = 764,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22144,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 154,
          visible = true,
          properties = {}
        },
        {
          id = 765,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 766,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 767,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 768,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 769,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3456,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 770,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 771,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 772,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4224,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 775,
          name = "platButtonL",
          type = "",
          shape = "rectangle",
          x = 8064,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 613,
          visible = true,
          properties = {}
        },
        {
          id = 777,
          name = "plat1",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 3968,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 571,
          visible = true,
          properties = {
            ["track"] = "SpacemRINEPOOP"
          }
        },
        {
          id = 778,
          name = "platButtonR",
          type = "",
          shape = "rectangle",
          x = 9728,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 613,
          visible = true,
          properties = {}
        },
        {
          id = 781,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 782,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 783,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 784,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 786,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 787,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 788,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 789,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 790,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 791,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 792,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 794,
          name = "conv4",
          type = "",
          shape = "rectangle",
          x = 10880,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 530,
          visible = true,
          properties = {}
        },
        {
          id = 795,
          name = "conv3",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 530,
          visible = true,
          properties = {}
        },
        {
          id = 796,
          name = "conv2",
          type = "",
          shape = "rectangle",
          x = 10624,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 530,
          visible = true,
          properties = {}
        },
        {
          id = 797,
          name = "conv1",
          type = "",
          shape = "rectangle",
          x = 10496,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 530,
          visible = true,
          properties = {}
        },
        {
          id = 798,
          name = "conv6",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 531,
          visible = true,
          properties = {}
        },
        {
          id = 799,
          name = "conv5",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 530,
          visible = true,
          properties = {}
        },
        {
          id = 815,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 816,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 817,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 818,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 819,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 820,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 821,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 822,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 823,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 824,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 825,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19584,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 826,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19328,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 827,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20096,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 828,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21248,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 829,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20608,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 831,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21504,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 832,
          name = "plat2",
          type = "",
          shape = "rectangle",
          x = 19328,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 571,
          visible = true,
          properties = {
            ["track"] = "track2"
          }
        },
        {
          id = 833,
          name = "plat3",
          type = "",
          shape = "rectangle",
          x = 20224,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 571,
          visible = true,
          properties = {
            ["track"] = "track3"
          }
        },
        {
          id = 834,
          name = "plat4",
          type = "",
          shape = "rectangle",
          x = 21120,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 571,
          visible = true,
          properties = {
            ["track"] = "track4"
          }
        },
        {
          id = 836,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 2880,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 573,
          visible = true,
          properties = {
            ["signText"] = "safety"
          }
        },
        {
          id = 837,
          name = "arrowL1",
          type = "",
          shape = "rectangle",
          x = 7936,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 606,
          visible = true,
          properties = {}
        },
        {
          id = 838,
          name = "arrowR1",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 603,
          visible = true,
          properties = {}
        },
        {
          id = 839,
          name = "arrowR2",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 603,
          visible = true,
          properties = {}
        },
        {
          id = 840,
          name = "arrowL2",
          type = "",
          shape = "rectangle",
          x = 9600,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 606,
          visible = true,
          properties = {}
        },
        {
          id = 841,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22904,
          y = 4088,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 843,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23552,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 851,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23808,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 257,
          visible = true,
          properties = {}
        },
        {
          id = 853,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23296,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 257,
          visible = true,
          properties = {}
        },
        {
          id = 866,
          name = "",
          type = "",
          shape = "rectangle",
          x = 25088,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 867,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24960,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 868,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24704,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 869,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24576,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 870,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24448,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 871,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24320,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 872,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24192,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 873,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 874,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 875,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 876,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 877,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 878,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 879,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24064,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 880,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24192,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 562,
          visible = true,
          properties = {}
        },
        {
          id = 882,
          name = "convSwitch",
          type = "",
          shape = "rectangle",
          x = 10368,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 621,
          visible = true,
          properties = {}
        },
        {
          id = 884,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24192,
          y = 2432,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 562,
          visible = true,
          properties = {}
        },
        {
          id = 885,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24192,
          y = 2304,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 562,
          visible = true,
          properties = {}
        },
        {
          id = 895,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22400,
          y = 2030,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 609,
          visible = true,
          properties = {}
        },
        {
          id = 896,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22272,
          y = 1921,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 906,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22016,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 600,
          visible = true,
          properties = {}
        },
        {
          id = 907,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21760,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 601,
          visible = true,
          properties = {}
        },
        {
          id = 908,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21632,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 909,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21504,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 910,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21376,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 911,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21248,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 597,
          visible = true,
          properties = {}
        },
        {
          id = 912,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22144,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 913,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21888,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 914,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21248,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 915,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21120,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 916,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20992,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 598,
          visible = true,
          properties = {}
        },
        {
          id = 917,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20864,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 597,
          visible = true,
          properties = {}
        },
        {
          id = 932,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22272,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 933,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21888,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 934,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21376,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 935,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21248,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 936,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21120,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 939,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19968,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 941,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19456,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 943,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18944,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 640,
          visible = true,
          properties = {}
        },
        {
          id = 946,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 4480,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 655,
          visible = true,
          properties = {}
        },
        {
          id = 952,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18944,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 953,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18944,
          y = 2048,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 955,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20480,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 137,
          visible = true,
          properties = {}
        },
        {
          id = 956,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17792,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 957,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 958,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17536,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 959,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 960,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16768,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 961,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17024,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 962,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17152,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 963,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17280,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 964,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17408,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 965,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 966,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16768,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 967,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16640,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 968,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16512,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 969,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16768,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 970,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18048,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 971,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17920,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 973,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18048,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 977,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16512,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 978,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16640,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 979,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16768,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 980,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 981,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17024,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 982,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17152,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 984,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17280,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 985,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17408,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 986,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17536,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 987,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17664,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 988,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17792,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 990,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17920,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 991,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18048,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 992,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16384,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 993,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16256,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 994,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16384,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 995,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18176,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 996,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18304,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 997,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 998,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18304,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 999,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1000,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18304,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1001,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18560,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1002,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1003,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18560,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1004,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18560,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1005,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15488,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 1006,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15360,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 1007,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15488,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 162,
          visible = true,
          properties = {}
        },
        {
          id = 1008,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14720,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 542,
          visible = true,
          properties = {}
        },
        {
          id = 1009,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14464,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 542,
          visible = true,
          properties = {}
        },
        {
          id = 1010,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14848,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 1011,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14592,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 1012,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14336,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 532,
          visible = true,
          properties = {}
        },
        {
          id = 1013,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 632,
          visible = true,
          properties = {}
        },
        {
          id = 1014,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 647,
          visible = true,
          properties = {}
        },
        {
          id = 1015,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 528,
          visible = true,
          properties = {}
        },
        {
          id = 1016,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 528,
          visible = true,
          properties = {}
        },
        {
          id = 1017,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1018,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1019,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1020,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1021,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1022,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1023,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 1024,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1025,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1026,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1027,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1028,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1029,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7808,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 542,
          visible = true,
          properties = {}
        },
        {
          id = 1031,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1032,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1033,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1034,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1035,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1036,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1037,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 1039,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 528,
          visible = true,
          properties = {}
        },
        {
          id = 1040,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1041,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1042,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1043,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1044,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 538,
          visible = true,
          properties = {}
        },
        {
          id = 1046,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1047,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1048,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1049,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1050,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1051,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1052,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1053,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1054,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1055,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1056,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1057,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1058,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1059,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1060,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1061,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1062,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 176,
          visible = true,
          properties = {}
        },
        {
          id = 1064,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1065,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1066,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1067,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1068,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1069,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1070,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1071,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1072,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1073,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1074,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1075,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1076,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1077,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1078,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1079,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1080,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1081,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1082,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1083,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1084,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1085,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1086,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1087,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1088,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1089,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1090,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1091,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1092,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1093,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1094,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 358,
          visible = true,
          properties = {}
        },
        {
          id = 1095,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 352,
          visible = true,
          properties = {}
        },
        {
          id = 1096,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 356,
          visible = true,
          properties = {}
        },
        {
          id = 1097,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1098,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1099,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1101,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1102,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1103,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 2688,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1114,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1121,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3456,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1124,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4352,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1125,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1126,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1127,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1128,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1129,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1130,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1131,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1132,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 4096,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1133,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 3968,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1134,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 4224,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1135,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6272,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 4224,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1137,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7040,
          y = 4224,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1138,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8320,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1140,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8576,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1141,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8704,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1142,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1143,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1147,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1148,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1149,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1150,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1151,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9472,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1152,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1153,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1154,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10880,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1155,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1156,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1157,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11520,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1158,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11648,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1159,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11776,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1160,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11904,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1161,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12032,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1162,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12160,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1163,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12288,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1164,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12416,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1165,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12544,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1166,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12672,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1167,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12800,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1168,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12928,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1169,
          name = "",
          type = "",
          shape = "rectangle",
          x = 13056,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1170,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14720,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1171,
          name = "",
          type = "",
          shape = "rectangle",
          x = 14976,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1172,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15232,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1173,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15488,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1174,
          name = "",
          type = "",
          shape = "rectangle",
          x = 15744,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1175,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16000,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1176,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16256,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1177,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1178,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1179,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1181,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 18432,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19968,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20224,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20608,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19584,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21120,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1188,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21888,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24192,
          y = 2176,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1197,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22272,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1198,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22016,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1199,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21888,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1200,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21760,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1201,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21376,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1202,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21248,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1203,
          name = "",
          type = "",
          shape = "rectangle",
          x = 21120,
          y = 1920,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1204,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20352,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1205,
          name = "",
          type = "",
          shape = "rectangle",
          x = 20096,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1206,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19840,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1207,
          name = "",
          type = "",
          shape = "rectangle",
          x = 19584,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1208,
          name = "",
          type = "",
          shape = "rectangle",
          x = 17024,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1209,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16896,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1210,
          name = "",
          type = "",
          shape = "rectangle",
          x = 16768,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1211,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10624,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1212,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1213,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10880,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1214,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1215,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11264,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11392,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11520,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1219,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1220,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1222,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1223,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1224,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1226,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8448,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8704,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1228,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8704,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1229,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1230,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8960,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1231,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1232,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 1233,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1234,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1239,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1249,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1253,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1254,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1255,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1257,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1258,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1259,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1261,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1262,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1263,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1264,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1265,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1266,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1267,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1268,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1269,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1270,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1271,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1272,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1273,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1274,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1275,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 1276,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 527,
          visible = true,
          properties = {}
        },
        {
          id = 1277,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1278,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1279,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1664,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1280,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 1792,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 537,
          visible = true,
          properties = {}
        },
        {
          id = 1281,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23296,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1282,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23552,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1283,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23808,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1284,
          name = "",
          type = "",
          shape = "rectangle",
          x = 22912,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1285,
          name = "",
          type = "",
          shape = "rectangle",
          x = 23040,
          y = 3840,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1286,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1287,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1288,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1289,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1290,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 2944,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1291,
          name = "",
          type = "",
          shape = "rectangle",
          x = 24832,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 1292,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 5632,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 1293,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 5248,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 1294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6912,
          y = 4736,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 334,
          visible = true,
          properties = {}
        },
        {
          id = 1301,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6272,
          y = 5888,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 5632,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1303,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1308,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1309,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 3968,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1310,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1311,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 4864,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1312,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 5248,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1314,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1315,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1316,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1317,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1322,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1324,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 2816,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 616,
          visible = true,
          properties = {}
        },
        {
          id = 1346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11136,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1347,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11008,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1348,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10880,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1349,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10752,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1350,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10624,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1351,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10496,
          y = 2560,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 509,
          visible = true,
          properties = {}
        },
        {
          id = 1390,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4736,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1391,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1392,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1393,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1396,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1397,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1398,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1399,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4864,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 586,
          visible = true,
          properties = {}
        },
        {
          id = 1402,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1406,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4736,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1407,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4608,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1412,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1554,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1555,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1556,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1557,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1558,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1559,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 626,
          visible = true,
          properties = {}
        },
        {
          id = 1561,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1562,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1563,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1564,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1565,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1566,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1567,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1568,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1569,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1570,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1571,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1572,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1573,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1574,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1575,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1576,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1577,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1578,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1579,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1580,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1581,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1582,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1583,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1584,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1585,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1586,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1587,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1588,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1589,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1590,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1591,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1592,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1593,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1594,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1595,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1596,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1597,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1598,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1599,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1600,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1601,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1602,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1603,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1604,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1605,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1606,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1607,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1608,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1609,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 580,
          visible = true,
          properties = {}
        },
        {
          id = 1610,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1611,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1612,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1613,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1614,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1615,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1616,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1617,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1618,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1619,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1620,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        },
        {
          id = 1621,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 508,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
