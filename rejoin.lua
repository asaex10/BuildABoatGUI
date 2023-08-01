local TPS, HTTP = game:GetService("TeleportService"), game:GetService("HttpService")
local function sameserver() 
  TPS:TeleportToPlaceInstance(game.PlaceId, game.JobId, game:GetService("Players").LocalPlayer)
end
local function diffserver()
  local Servers = HttpService:JSONDecode(game:HttpGet("https://games.roblox.com/v1/games/"..game.PlaceId.."/servers/Public?sortOrder=Asc&limit=100"))
  local possible = {}
  for _, Server in Servers["data"] do
    if Server["id"] ~= game.JobId then
     table.insert(possible, Server)
    end
  end
  local server = possible[Random.new():NextInteger(1, #possible)]
  return TPService:TeleportToPlaceInstance(game.PlaceId, server)
end
