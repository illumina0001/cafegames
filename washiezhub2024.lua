--[[

		Gui2Lua™
		10zOfficial
		Version 1.0.0

]]


-- Instances

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local label = Instance.new("TextLabel")
local TextButton = Instance.new("TextButton")

-- Properties

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.new(1, 1, 1)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.32154882, 0, 0.296992481, 0)
Frame.Size = UDim2.new(0, 350, 0, 353)

UICorner.Parent = Frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Position = UDim2.new(0, 0, 0.0424929187, 0)
TextLabel.Size = UDim2.new(0, 350, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "You are using a stolen version of Washiez2024"
TextLabel.TextColor3 = Color3.new(1, 0, 0.0156863)
TextLabel.TextScaled = true
TextLabel.TextSize = 14
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.305949003, 0)
TextLabel_2.Size = UDim2.new(0, 350, 0, 93)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Someone stole my hub and uploaded it onto Scriptblox and is now getting MY views from it. This script was made by i_nco and my only scriptblox account is inco999. Find the new version at discord.gg/robloxtrollers or on my official Scriptblox account, inco999."
TextLabel_2.TextColor3 = Color3.new(1, 0, 0.0156863)
TextLabel_2.TextSize = 14
TextLabel_2.TextWrapped = true

label.Name = "label"
label.Parent = Frame
label.BackgroundColor3 = Color3.new(1, 1, 1)
label.BorderColor3 = Color3.new(0, 0, 0)
label.BorderSizePixel = 0
label.Position = UDim2.new(0.214285716, 0, 0.674220979, 0)
label.Size = UDim2.new(0, 200, 0, 50)
label.Font = Enum.Font.SourceSans
label.Text = "(to the person who did this, i will now be securing my script so u cant steal it! please ask for permission before doing this)"
label.TextColor3 = Color3.new(0, 0, 0)
label.TextSize = 14
label.TextWrapped = true

TextButton.Parent = Frame
TextButton.BackgroundColor3 = Color3.new(1, 1, 1)
TextButton.BorderColor3 = Color3.new(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.214285716, 0, 0.838526905, 0)
TextButton.Size = UDim2.new(0, 200, 0, 50)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "Close Popup"
TextButton.TextColor3 = Color3.new(1, 0, 0.0156863)
TextButton.TextScaled = true
TextButton.TextSize = 14
TextButton.TextWrapped = true

-- Scripts

local function ERYKJR_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local par = script.Parent
	
	par.MouseButton1Click:connect(function()
		par.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(ERYKJR_fake_script)()
