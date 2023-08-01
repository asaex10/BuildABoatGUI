-- https://v3rmillion.net/showthread.php?pid=8199133#pid8199133
local player = game.Players.LocalPlayer
local CharParts = {}

function SetupCharCollide(Char)
    CharParts = {}
    Char:WaitForChild("Head")
    for i, v in pairs(Char:GetChildren()) do
        if v:IsA("BasePart") then
            table.insert(CharParts, v)
        end
    end
end

if game.Players.LocalPlayer.Character then
    SetupCharCollide(workspace[player.Name])
end
game.Players.LocalPlayer.CharacterAdded:connect(function(Ch)
    SetupCharCollide(Ch)
    if noclip then enable() end
end)

local function enable()
  for i = 1, #CharParts do
    CharParts[i].CanCollide = false
  end
end
local function disable()
  for i = 1, #CharParts do
    CharParts[i].CanCollide = true
  end
end

return {
  enable = enable,
  disable = disable
}
