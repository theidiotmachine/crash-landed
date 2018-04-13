local Json = require 'json'
local WorldState = { data = {} }

local function defaultState()
  return { gems = {red =  false, blue = false, green = false, yellow = false} }
end

function WorldState.init(dir)
  WorldState.dir = dir
  WorldState.data.islands = {
    saucer = {
      pos = {x = 1, y = 1},
      stuff = "grass",
      feature = "shipCrash",
      title = "Whoops...",
      level = "saucer01",
      transition = "saucerLand",
      smoke = true,
      canQuitToWorld = false,
      --bgmName = 'Mighty Like Us'
    },
    map01 = {
      pos = {x = 2, y = 1},
      stuff = "grass",
      feature = "grassBits",
      title = "This seems nice?",
      level = "map01",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'The Show Must Be Go'
    },
    map03 = {
      pos = {x = 3, y = 1},
      stuff = "grass",
      feature = "grassWater",
      title = "A quick dip!",
      level = "map03",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'Mighty Like Us'
    },
    map05 = {
      pos = {x = 4, y = 1},
      stuff = "grass",
      feature = "greenSmilies",
      title = "The only way is... wait what?",
      level = "map05",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'The Show Must Be Go'
    },
    mapSecret01 = {
      pos = {x = 2, y = 2},
      stuff = "grass",
      --feature = "grassWater",
      title = "So what does this do?",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'The Show Must Be Go'
    },
    
    --test levels, hidden
    testfac = {
      pos = {x = 4, y = 100},
      stuff = "grass",
      feature = "greenSmilies",
      title = "Test level",
      level = "testfac",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'The Show Must Be Go'
    },
    
    testwat = {
      pos = {x = 4, y = 101},
      stuff = "grass",
      feature = "greenSmilies",
      title = "Test level",
      level = "testwat",
      transition = "saucerBeam",
      canQuitToWorld = true,
      bgmName = 'The Show Must Be Go'
    }
  }
  
  for _, i in pairs(WorldState.data.islands) do
    i.state = defaultState()
  end
  
  WorldState.data.barriers = {
    map01green = {
      color = "Green",
      from = {x=2,y=1},
      to = {x=3,y=1},
    },
    map01blue = {
      color = "Blue",
      from = {x=2,y=1},
      to = {x=2,y=2},
    },
    map03blue = {
      color = "Blue",
      from = {x=3,y=1},
      to = {x=4,y=1},
    },
  }
  WorldState.data.saucerLoc = {x=1, y=1} 
  WorldState.data.money = 0
end

function WorldState.incMoney(money)
  WorldState.data.money = WorldState.data.money + money
end

function WorldState.destroyBarriers(barrierNames)
  for barrierName, _ in pairs(barrierNames) do
    WorldState.data.barriers[barrierName] = nil
  end
end

function WorldState.gotGems(mapName, gems)
  for gem, got in pairs(gems) do
    if got then
      WorldState.data.islands[mapName].state.gems[gem] = true
    end
  end
end

function WorldState.setSaucerLoc(sl)
  WorldState.data.saucerLoc.x = sl.x
  WorldState.data.saucerLoc.y = sl.y
end

function WorldState.fromJSON(str, dir)
  WorldState.data = Json.decode(str)
  WorldState.dir = dir
end

function WorldState.toJSON()
  return Json.encode(WorldState.data)
end

return WorldState