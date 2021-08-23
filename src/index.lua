-- "Inspired" by Terni#9174
-- Remade by bruh.exe#5138

-- dont fucking bug me for my naming ways, i came from js you little shit

local DiscordLib =
    loadstring(game:HttpGet"https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("BabftUI | Hello ".. game.Players.LocalPlayer.DisplayName)

local serv = win:Server("BabftUI", "")

local Main = serv:Channel("Main")

Main:Button(
    "AUTO FARM",
    function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua')))()
    end
)

Main:Button(
    "Inspired by Terni#9174, original is LXSGUI",
    function()
        setclipboard("Terni#9174")
    end
)

Main:Button(
    "Remade by bruh.exe#5138",
    function()
        setclipboard("bruh.exe#5138")
    end
)

Main:Button(
    "COPY DISCORD SERVER",
    function()
        setclipboard("https://discord.gg/EPTHrbcvH2")
    end
)
