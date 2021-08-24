-- "Inspired" by Terni#9174
-- Made by bruh.exe#5138

antiafk = {
    bool = false,
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
            else
                self.pings = self.pings + 1
                if self.pings > 7
                    Sound:Play("rbxassetid://324189414")
                    local SetCore = Starter:SetCore("SendNotification",{
                        Title = "Stop being AFK",
                        Text = "WAKE UP WAKE UP WAKE UP WAKE UP",
                        Icon = "",
                        Duration = 5
                    })
                end
            end
        end)
    end
}

