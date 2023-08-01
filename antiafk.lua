-- from https://v3rmillion.net/showthread.php?tid=772135
local vu = game:GetService("VirtualUser")
local event

local function enable() 
   event = game:GetService("Players").LocalPlayer.Idled:connect(function()
      vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
      wait(1)
      vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   end)
end
local function disable()
   event:Disconnect()
end

return { enable = enable, disable = disable }
