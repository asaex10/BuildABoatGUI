local afkGold = loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua')))
local function handler()
    Promise.new(function (res,rej)
        afkGold()
        return rej
    end)
end
return handler
