return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.0.2",
  orientation = "orthogonal",
  renderorder = "left-down",
  width = 100,
  height = 60,
  tilewidth = 128,
  tileheight = 128,
  nextobjectid = 367,
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
            ["stuff"] = "dirt"
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
          id = 88,
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
          id = 96,
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
          id = 104,
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
      name = "Tile Layer 1",
      x = 0,
      y = 0,
      width = 100,
      height = 60,
      visible = true,
      opacity = 1,
      offsetx = 0,
      offsety = 0,
      properties = {
        ["collidable"] = true
      },
      encoding = "base64",
      data = "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAADkAAAAxAAAAMQAAACkAAAAAAAAAOQAAADEAAAApAAAAAAAAAAAAAAA5AAAAMQAAACkAAAAAAAAAAAAAAAAAAAA5AAAAMQAAACkAAAAAAAAAAAAAAAAAAAA5AAAAKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAcQAAAAkAAAAJAAAACQAAAAkAAABpAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA5AAAAMQAAACkAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAAAAAAkAAAAJAAAACQAAAAkAAAAhAAAAGQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAOQAAADEAAAApAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAAAAAACAAAAAgAAAAIAAAACAAAAUQAAAEkAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAFEAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGQAAACEAAAAAAAAAGQAAAAIAAAAAAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAUQAAACEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGQAAAEkAAAACAAAAAgAAAAIAAAACAAAAAAAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAABRAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAGQAAAEkAAAACAAAAAgAAAAIAAAACAAAAAgAAAAAAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAFEAAAAJAAAACQAAAAkAAAAAAAAAGQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAAIQAAAAAAAAAZAAAACQAAAAkAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHEAAAAJAAAACQAAAAkAAAAJAAAACQAAAFkAAAAAAAAAAAAAAAAAAAAZAAAACQAAAAkAAAAJAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkAAAAJAAAACQAAAAkAAAAJAAAACQAAAEkAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAAAAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAAAAAEkAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAFEAAAAAAAAASQAAAAIAAAACAAAAUQAAACEAAAAAAAAAAAAAADkAAAAxAAAAMQAAADEAAAAxAAAAKQAAAAAAAAAAAAAAOQAAADEAAAAxAAAAMQAAADEAAAAxAAAAKQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAIAAAACAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAZAAAASQAAAAIAAAACAAAAAgAAACEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkAAABJAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAAAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAkAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAABRAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIAAAACAAAAAgAAAAIAAAACAAAAAAAAAAAAAAAZAAAASQAAAAIAAAACAAAAAgAAAAIAAABRAAAAIQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkAAABJAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAAAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAFEAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAgAAAAIAAAAAAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAFEAAAAhAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABkAAABJAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAUQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAAAJAAAAAgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAACAAAAAgAAAAIAAAACAAAAUQAAAAkAAAAJAAAACQAAAAkAAAAJAAAACQAAAAkAAABJAAAAAgAAAAIAAAACAAAAAgAAAAIAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAgAAAAIAAAACAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF4AAABeAAAAXgAAAF4AAABeAAAAXgAAAF4AAAA/AAAAAAAAAAAAAABHAAAAXgAAAF4AAABeAAAAPwAAAAAAAAAAAAAAAAAAAEcAAABeAAAAXgAAAF4AAAA/AAAAAAAAAAAAAAAAAAAAAAAAAEcAAABeAAAAXgAAAF4AAABeAAAAdgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAF4AAABeAAAAXgAAAF4AAAA/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAF4AAABeAAAAXgAAAF4AAABeAAAAXgAAAHYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAF4AAABeAAAAXgAAAF4AAAB2AAAAAAAAAG4AAABeAAAAXgAAAF4AAABeAAAAXgAAAD8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAACcAAAB2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAnAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAJwAAAAAAAAAfAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAJwAAAHYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABeAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAnAAAAdgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAACcAAAB2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAABuAAAAHwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAJwAAAHYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAnAAAAdgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAACcAAAB2AAAAAAAAAAAAAAAAAAAAbgAAAB8AAABXAAAAAAAAAAAAAAAAAAAAXgAAAHYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAbgAAAB8AAABXAAAAVwAAAAAAAAAAAAAAAAAAAFcAAAAnAAAAdgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAbgAAAB8AAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAABXAAAAVwAAACcAAAB2AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAB8AAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAJwAAAHYAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARwAAAF4AAAA/AAAAAAAAAAAAAAAAAAAAAAAAAEcAAABeAAAAXgAAAF4AAABeAAAAXgAAAF4AAABeAAAAXgAAAF4AAABeAAAAXgAAAF4AAABeAAAAXgAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgAAAD8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARwAAAB8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgAAAD8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgAAAB8AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAbgAAAB8AAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAAAAAAAAAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARwAAAF4AAABeAAAAXgAAAF4AAABeAAAAPwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAF4AAABeAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAEcAAABeAAAAPwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAXgAAAF4AAABeAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAARwAAAF4AAAA/AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABuAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAABHAAAAXgAAAF4AAABeAAAAHwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAABXAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAABXAAAAVwAAAFcAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
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
          id = 3,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 157,
          visible = true,
          properties = {}
        },
        {
          id = 71,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 307.2,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 135,
          visible = true,
          properties = {}
        },
        {
          id = 73,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 74,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 75,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 76,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1280,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 77,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1152,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 78,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1024,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 79,
          name = "",
          type = "",
          shape = "rectangle",
          x = 896,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 87,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 88,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 89,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 90,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 91,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 92,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 93,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 94,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 95,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 96,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 97,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 98,
          name = "",
          type = "",
          shape = "rectangle",
          x = 768,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 99,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 100,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5888,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 104,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3456,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 105,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3328,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 106,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 107,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3072,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 108,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2944,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 109,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 110,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 111,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 112,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 113,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4096,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 114,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 115,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4608,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 116,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5120,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 117,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 118,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 119,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4736,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 120,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4224,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 122,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 123,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6144,
          y = 128,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 125,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 135,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3776,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 136,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4224,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 138,
          name = "switch1",
          type = "",
          shape = "rectangle",
          x = 8448,
          y = 1280,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 327,
          visible = true,
          properties = {}
        },
        {
          id = 139,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 140,
          name = "plat1",
          type = "platform",
          shape = "rectangle",
          x = 8192,
          y = 1536,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 344,
          visible = true,
          properties = {
            ["track"] = "plat1Track"
          }
        },
        {
          id = 141,
          name = "plat1Track",
          type = "track",
          shape = "polyline",
          x = 8000,
          y = 1433.6,
          width = 0,
          height = 0,
          rotation = 0,
          visible = true,
          polyline = {
            { x = 0, y = 0 },
            { x = 256, y = 0 }
          },
          properties = {}
        },
        {
          id = 178,
          name = "buttonGreenEnd",
          type = "",
          shape = "rectangle",
          x = 12416,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 302,
          visible = true,
          properties = {}
        },
        {
          id = 179,
          name = "buttonBlueEnd",
          type = "",
          shape = "rectangle",
          x = 10368,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 318,
          visible = true,
          properties = {}
        },
        {
          id = 180,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2816,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 181,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 182,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 183,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 184,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 185,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 186,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5888,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 187,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 188,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6144,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 189,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6272,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 190,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 191,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 192,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 193,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 194,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6912,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 195,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7040,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 196,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7168,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 197,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7296,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 198,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7424,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 199,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7552,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 200,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 201,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 202,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9984,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 203,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10112,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 204,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 205,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10368,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 206,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10496,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 207,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10624,
          y = 1408,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 342,
          visible = true,
          properties = {}
        },
        {
          id = 208,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 209,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 210,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 211,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 213,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 214,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 215,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9344,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 245,
          visible = true,
          properties = {}
        },
        {
          id = 216,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2048,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 217,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2176,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 218,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2304,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 219,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 220,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 221,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1792,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 222,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1920,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 223,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 224,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5248,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 225,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5376,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 226,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5504,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 227,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5632,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 228,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 229,
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
          id = 234,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 235,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 236,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6912,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 237,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7168,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 238,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7296,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 239,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7424,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 240,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7552,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 241,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 242,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7936,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 243,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9856,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 244,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9984,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 245,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10112,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 246,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10240,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 247,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10368,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 248,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10496,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 249,
          name = "",
          type = "",
          shape = "rectangle",
          x = 10624,
          y = 1152,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 250,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12160,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 251,
          name = "",
          type = "",
          shape = "rectangle",
          x = 12032,
          y = 512,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 252,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11904,
          y = 640,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 253,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11776,
          y = 768,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 254,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 255,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8320,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 256,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8448,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 257,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8576,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 258,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8704,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 259,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8832,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 260,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5760,
          y = 6016,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 261,
          name = "",
          type = "",
          shape = "rectangle",
          x = 5888,
          y = 6016,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 161,
          visible = true,
          properties = {}
        },
        {
          id = 262,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 263,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1408,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 264,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 265,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 266,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 267,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 268,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 269,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2432,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 270,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 271,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 272,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 273,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2688,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 274,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 275,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 276,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 277,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 278,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 279,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 3072,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 280,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 4864,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 281,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 4992,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 282,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 5504,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 283,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 5632,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 284,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 5760,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 285,
          name = "",
          type = "",
          shape = "rectangle",
          x = 128,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 286,
          name = "",
          type = "",
          shape = "rectangle",
          x = 256,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 287,
          name = "",
          type = "",
          shape = "rectangle",
          x = 384,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 288,
          name = "",
          type = "",
          shape = "rectangle",
          x = 512,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 289,
          name = "",
          type = "",
          shape = "rectangle",
          x = 640,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 147,
          visible = true,
          properties = {}
        },
        {
          id = 290,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1536,
          y = 6400,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 291,
          name = "",
          type = "",
          shape = "rectangle",
          x = 2560,
          y = 6784,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 292,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3328,
          y = 7040,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 293,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3456,
          y = 7040,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 294,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3584,
          y = 7040,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 295,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3712,
          y = 6912,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 296,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3840,
          y = 6784,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 297,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3968,
          y = 6656,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 298,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4096,
          y = 6656,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 299,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4224,
          y = 6656,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 300,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4352,
          y = 6656,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 301,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 6528,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 302,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4608,
          y = 6400,
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
          x = 4736,
          y = 6272,
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
          x = 4864,
          y = 6272,
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
          x = 4992,
          y = 6272,
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
          x = 5120,
          y = 6272,
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
          x = 5248,
          y = 6144,
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
          x = 5376,
          y = 6016,
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
          x = 5504,
          y = 5888,
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
          x = 6016,
          y = 4096,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 311,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4224,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 312,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 3968,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 313,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 314,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4480,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 315,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4608,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 316,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4736,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 317,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4864,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 318,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 4992,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 319,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 5120,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 320,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 5248,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 321,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 5376,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 322,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 5504,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 158,
          visible = true,
          properties = {}
        },
        {
          id = 323,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 5376,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 324,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 5248,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 325,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 5120,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 326,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 4992,
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
          x = 6912,
          y = 4864,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 328,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7040,
          y = 4736,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 329,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 4480,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 330,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 4352,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 331,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 4224,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 332,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 4096,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 333,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6528,
          y = 3712,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 334,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6656,
          y = 3584,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 335,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6784,
          y = 3456,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 336,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6912,
          y = 3328,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 337,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7168,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 132,
          visible = true,
          properties = {}
        },
        {
          id = 338,
          name = "",
          type = "",
          shape = "rectangle",
          x = 1664,
          y = 4992,
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
          x = 1408,
          y = 5120,
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
          x = 2432,
          y = 4864,
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
          x = 2688,
          y = 4864,
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
          x = 768,
          y = 5504,
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
          x = 512,
          y = 384,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 344,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 345,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 346,
          name = "",
          type = "",
          shape = "rectangle",
          x = 8192,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 347,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7168,
          y = 256,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 348,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6400,
          y = 1024,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 349,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11264,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 350,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11776,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 264,
          visible = true,
          properties = {}
        },
        {
          id = 357,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9088,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 130,
          visible = true,
          properties = {}
        },
        {
          id = 359,
          name = "",
          type = "",
          shape = "rectangle",
          x = 4480,
          y = 4864,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 154,
          visible = true,
          properties = {}
        },
        {
          id = 360,
          name = "",
          type = "",
          shape = "rectangle",
          x = 3200,
          y = 7040,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 154,
          visible = true,
          properties = {}
        },
        {
          id = 361,
          name = "",
          type = "",
          shape = "rectangle",
          x = 7680,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 271,
          visible = true,
          properties = {}
        },
        {
          id = 362,
          name = "",
          type = "",
          shape = "rectangle",
          x = 9216,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 271,
          visible = true,
          properties = {}
        },
        {
          id = 363,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 271,
          visible = true,
          properties = {}
        },
        {
          id = 364,
          name = "",
          type = "",
          shape = "rectangle",
          x = 0,
          y = 6144,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 149,
          visible = true,
          properties = {}
        },
        {
          id = 365,
          name = "",
          type = "",
          shape = "rectangle",
          x = 11392,
          y = 896,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 134,
          visible = true,
          properties = {}
        },
        {
          id = 366,
          name = "",
          type = "",
          shape = "rectangle",
          x = 6016,
          y = 3200,
          width = 128,
          height = 128,
          rotation = 0,
          gid = 142,
          visible = true,
          properties = {}
        }
      }
    }
  }
}
