-- Premium Patch Notice Script (Client-Side)

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local player = Players.LocalPlayer

-- Create ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PatchNotice"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.Parent = player:WaitForChild("PlayerGui")

-- Create Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0, 450, 0, 180)
frame.Position = UDim2.new(0.5, -225, 0.5, -90)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BackgroundTransparency = 0.1
frame.BorderSizePixel = 0
frame.AnchorPoint = Vector2.new(0.5, 0.5)
frame.Parent = screenGui

-- UICorner for rounded edges
local corner = Instance.new("UICorner")
corner.CornerRadius = UDim.new(0, 12)
corner.Parent = frame

-- Drop shadow
local shadow = Instance.new("ImageLabel")
shadow.Name = "Shadow"
shadow.BackgroundTransparency = 1
shadow.Image = "rbxassetid://1316045217"
shadow.ImageTransparency = 0.5
shadow.ScaleType = Enum.ScaleType.Slice
shadow.SliceCenter = Rect.new(10, 10, 118, 118)
shadow.Size = UDim2.new(1, 30, 1, 30)
shadow.Position = UDim2.new(0.5, -225, 0.5, -90)
shadow.AnchorPoint = Vector2.new(0.5, 0.5)
shadow.ZIndex = 0
shadow.Parent = screenGui

-- Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -40, 0, 50)
titleLabel.Position = UDim2.new(0, 20, 0, 20)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚠️ Script Patched"
titleLabel.Font = Enum.Font.GothamBold
titleLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
titleLabel.TextScaled = true
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.Parent = frame

-- Message Label
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -40, 0, 60)
messageLabel.Position = UDim2.new(0, 20, 0, 70)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = "This script is no longer usable. No worries — nothing was stolen!"
messageLabel.Font = Enum.Font.Gotham
messageLabel.TextColor3 = Color3.fromRGB(240, 240, 240)
messageLabel.TextWrapped = true
messageLabel.TextScaled = true
messageLabel.TextXAlignment = Enum.TextXAlignment.Left
messageLabel.Parent = frame

-- Countdown Label
local countdownLabel = Instance.new("TextLabel")
countdownLabel.Size = UDim2.new(1, 0, 0, 40)
countdownLabel.Position = UDim2.new(0, 0, 1, -45)
countdownLabel.BackgroundTransparency = 1
countdownLabel.Text = ""
countdownLabel.Font = Enum.Font.GothamBold
countdownLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
countdownLabel.TextScaled = true
countdownLabel.Parent = frame

-- Countdown Logic
local countdown = 15
task.spawn(function()
	while countdown > 0 do
		countdownLabel.Text = "Closing in " .. countdown .. " seconds..."
		countdown -= 1
		wait(1)
	end

	-- Kick the player after countdown
	player:Kick("You’ve been safely disconnected to protect your account. Stay safe! ❤️")
end)
