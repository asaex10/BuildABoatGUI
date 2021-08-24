return loadstring(game:HttpGet"https://cdn.jsdelivr.net/gh/RandomAdamYT/DarkHub@a615a13722440a3e2ec7c8f977328466b48be399/NewUI":gsub("Dark Hub","BabftUI"):gsub([[local function BloxcrusherBanner()
        local closebtnhover = false
        local AdFrame = Instance.new("Frame")
        local AdImg = Instance.new("ImageLabel")
        local AdClose = Instance.new("ImageButton")
        local ClickedFrame = Instance.new("Frame")
        local ClickLabel = Instance.new("TextLabel")
        AdFrame.Name = "AdFrame"
        AdFrame.Parent = DarkHubLib
        AdFrame.AnchorPoint = Vector2.new(0.5, 1)
        AdFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AdFrame.BackgroundTransparency = 1.000
        AdFrame.Position = UDim2.new(0.5, 0, 1, -20)
        AdFrame.Size = UDim2.new(0, 720, 0, 90)
        local decals = {"7300398174", "7300399913", "7300400639"}        
        AdImg.Name = "AdImg"
        AdImg.Parent = AdFrame
        AdImg.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AdImg.Size = UDim2.new(1, 0, 1, 0)
        AdImg.Image = "rbxassetid://"..tostring(decals[math.random(#decals)])
        AdImg.BackgroundTransparency = 1.000
        AdClose.Name = "AdClose?"
        AdClose.Parent = AdImg
        AdClose.AnchorPoint = Vector2.new(1, 0)
        AdClose.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        AdClose.BackgroundTransparency = 1.000
        AdClose.Position = UDim2.new(1, -5, 0, 5)
        AdClose.Size = UDim2.new(0, 15, 0, 15)
        AdClose.ZIndex = 2
        AdClose.Image = "http://www.roblox.com/asset/?id=6521435525"
        ClickedFrame.Name = "ClickedFrame"
        ClickedFrame.Parent = AdFrame
        ClickedFrame.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
        ClickedFrame.BackgroundTransparency = 1.000
        ClickedFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
        ClickedFrame.Size = UDim2.new(1, 0, 1, 0)
        ClickedFrame.ZIndex = 3
        ClickLabel.Name = "ClickLabel"
        ClickLabel.Parent = ClickedFrame
        ClickLabel.AnchorPoint = Vector2.new(0.5, 0.5)
        ClickLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ClickLabel.BackgroundTransparency = 1.000
        ClickLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
        ClickLabel.Size = UDim2.new(0, 200, 0, 50)
        ClickLabel.ZIndex = 3
        ClickLabel.Font = Enum.Font.Gotham
        ClickLabel.Text = "Website link copied to clipboard"
        ClickLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        ClickLabel.TextSize = 22.000
        ClickLabel.TextTransparency = 1.000

        AdClose.MouseEnter:Connect(function()
            closebtnhover = true
        end)
        AdClose.MouseLeave:Connect(function()
            closebtnhover = false
        end)
        AdClose.MouseButton1Click:Connect(function()
            AdFrame:Destroy()
        end)

        AdImg.InputBegan:Connect(function(Input)
            if Input.UserInputType == Enum.UserInputType.MouseButton1 and not closebtnhover then
                spawn(function()
                    setclipboard("https://fluxteam.xyz/")
                    ClickedFrame.BackgroundTransparency = 0.2
                    ClickLabel.TextTransparency = 0
                    wait(1)
                    ClickedFrame.BackgroundTransparency = 1
                    ClickLabel.TextTransparency = 1
                end)
            end
        end)        
    end    
    BloxcrusherBanner()]],""))();
