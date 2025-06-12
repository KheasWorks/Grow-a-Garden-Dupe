-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PatchNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.25, 0)
frame.Position = UDim2.new(0.3, 0, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create the main message
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 0.5, 0)
textLabel.Position = UDim2.new(0, 0, 0, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "⚠️ This script has been patched and is no longer usable."
textLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

-- Add a reassurance line
local safeText = Instance.new("TextLabel")
safeText.Size = UDim2.new(1, 0, 0.25, 0)
safeText.Position = UDim2.new(0, 0, 0.5, 0)
safeText.BackgroundTransparency = 1
safeText.Text = "Don't worry! This is not a stealing script. ❤️"
safeText.TextColor3 = Color3.fromRGB(200, 200, 200)
safeText.TextScaled = true
safeText.Font = Enum.Font.Gotham
safeText.Parent = frame

-- Countdown Label
local countdownLabel = Instance.new("TextLabel")
countdownLabel.Size = UDim2.new(1, 0, 0.25, 0)
countdownLabel.Position = UDim2.new(0, 0, 0.75, 0)
countdownLabel.BackgroundTransparency = 1
countdownLabel.TextColor3 = Color3.fromRGB(255, 170, 0)
countdownLabel.TextScaled = true
countdownLabel.Font = Enum.Font.GothamSemibold
countdownLabel.Parent = frame

-- Countdown logic
local countdown = 15
while countdown > 0 do
	countdownLabel.Text = "Closing in " .. countdown .. " seconds..."
	countdown -= 1
	wait(1)
end

-- Kick the player with a kind message
game.Players.LocalPlayer:Kick("You've been safely disconnected to protect your account. Stay safe! ❤️")
