local DiscordLib =
    loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()

local win = DiscordLib:Window("LXSGUI | Hello ".. game.Players.LocalPlayer.DisplayName)

local serv = win:Server("LXSGUI", "")

local Main = serv:Channel("Main")

Main:Button(
    "AUTO FARM",
    function()
        loadstring(game:HttpGet(('https://raw.githubusercontent.com/urmomjklol69/GoldFarmBabft/main/GoldFarm.lua')))()
    end
)

Main:Button(
    "By Terni#9174",
    function()
        setclipboard("Terni#9174")
    end
)

Main:Button(
    "Modified by bruh.exe#5138",
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
