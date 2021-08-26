-- Made by bruh.exe#5138

local StarterGui = game:GetService("StarterGui")

antiafk = {
    alarm = false,
    enabled = false,
    pings = 0,
    set = function (self, bool)
        self.bool = bool
    end,
    init = function (self)
        -- from https://github.com/zachariapopcorn/afk-system/blob/main/AntiAFKKick.lua, edited by me
        -- Script contributed by ItzFireable (forum profile here: https://devforum.roblox.com/u/itzfireable/summary)
        local vu = game:GetService("VirtualUser")
        game:GetService("Players").LocalPlayer.Idled:connect(function()
            if self.bool == true
                vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
                wait(1)
                vu:SetKeyDown("W")
                wait(1)
                vu.SetKeyUp("W")
            elseif 
                self.pings = self.pings + 1
                if self.pings > 7
                    Alarm = Instance.new("Sound")
                    Alarm.SoundId = "rbxassetid://324189414"
                    Alarm.Parent = game.Workspace
                    Alarm.Volume = 100
                    Alarm.Looped = false
                    Alarm:Play()
                    game.StarterGui:SetCore("ChatMakeSystemMessage", {
                        Text = "WAKEY WAKEY";
                        Color = Color3.fromRGB(255,10,10);
                        Font = Enum.Font.FredokaOne;
                        FontSize = Enum.FontSize.Size96;
                    });
                    local StopAlarm = Game.Players.LocalPlayer:GetMouse().Button1Down:Connect(function()
                        Alarm:Stop()
                        StopAlarm:Destroy()
                    end)
                end
            end
        end)
    end
}

return antiafk
