local Instances = {}

local GUI = Instance.new("ScreenGui",game.CoreGui)

writefile("Prism/X.png",game:HttpGet("https://raw.githubusercontent.com/Mastadawn/Utils/main/X.png"))
writefile("Prism/Check.png",game:HttpGet("https://raw.githubusercontent.com/Mastadawn/Utils/main/Check.png"))

local Notifications = {
    Notify = function(Header,BodyTxt,Type)

        local Frame = Instance.new("Frame",GUI)
        table.insert(Instances,Frame)
        local ImageLabel = Instance.new("ImageLabel")
        local Title = Instance.new("TextLabel")
        local Body = Instance.new("TextLabel")
        local Bar = Instance.new("Frame")

        local value = 0
        for i,v in pairs(Instances) do
            value = value + .1
        end

        Frame.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        Frame.BackgroundTransparency = 0.25
        Frame.BorderSizePixel = 0
        Frame.Position = UDim2.new(0.865529612, 0, 0.908544278 - value, 0)
        Frame.Size = UDim2.new(0.1748939451/1.3, 0, 0.0952531248/1.4, 0)

        ImageLabel.Parent = Frame
        ImageLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        ImageLabel.BackgroundTransparency = 1.000
        ImageLabel.Position = UDim2.new(0.0288728699, 0, -0.0929833502, 0)
        ImageLabel.Size = UDim2.new(0.17, 0, 1, 0)
        ImageLabel.ScaleType = Enum.ScaleType.Fit

        Bar.Name = "Bar"
        Bar.Parent = Frame
        Bar.BorderSizePixel = 0
        Bar.Position = UDim2.new(0, 0, 0.906937182, 0)
        Bar.Size = UDim2.new(1, 0, 0.0930639729, 0)

        if Type == 1 then
            ImageLabel.Image = getsynasset("Prism/Check.png")
            Bar.BackgroundColor3 = Color3.fromRGB(0, 189, 88)
        elseif Type == 2 then
            ImageLabel.Image = getsynasset("Prism/X.png")
            Bar.BackgroundColor3 = Color3.fromRGB(255, 64, 67)
        end

        Title.Name = "Title"
        Title.Parent = Frame
        Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Title.BackgroundTransparency = 1.000
        Title.Position = UDim2.new(0.278021038, 0, 0.1, 0)
        Title.Size = UDim2.new(0.722416103, 0, 0.335547626, 0)
        Title.Font = Enum.Font.Gotham
        Title.Text = Header
        Title.TextColor3 = Color3.fromRGB(255, 255, 255)
        Title.TextScaled = true
        Title.TextSize = 14.000
        Title.TextWrapped = true
        Title.TextXAlignment = "Left"

        Body.Name = "Body"
        Body.Parent = Frame
        Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Body.BackgroundTransparency = 1
        Body.Position = UDim2.new(0.281803907, 0, 0.481727779, 0)
        Body.Size = UDim2.new(0.688196123, 0, 0.272153013, 0)
        Body.Font = Enum.Font.Gotham
        Body.Text = BodyTxt
        Body.TextColor3 = Color3.fromRGB(200, 200, 200)
        Body.TextScaled = true
        Body.TextSize = 14.000
        Body.TextWrapped = true
        Body.TextXAlignment = "Left"

        Frame.Position = Frame.Position + UDim2.new(.5,0,0,0)
        for i = 1,15 do
            Frame.Position = Frame.Position - UDim2.new(.5/15,0,0,0)
            task.wait()
        end

        for i=1,100 do
            Bar.Position = Bar.Position + UDim2.new(1/100,0,0,0)
            task.wait()
        end
        
        for i = 1,30 do
            Frame.Position = Frame.Position + UDim2.new(.5/30,0,0,0)
            task.wait()
        end
        Frame:Destroy()
        for i,v in pairs(Instances) do
            table.remove(Instances,i)
        end
    end
}

return Notifications
