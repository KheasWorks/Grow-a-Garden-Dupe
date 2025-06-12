-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PatchNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.3, 0)
frame.Position = UDim2.new(0.3, 0, 0.35, 0)
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

-- Create countdown label
local countdownLabel = Instance.new("TextLabel")
countdownLabel.Size = UDim2.new(1, 0, 0.5, 0)
countdownLabel.Position = UDim2.new(0, 0, 0.5, 0)
countdownLabel.BackgroundTransparency = 1
countdownLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
countdownLabel.TextScaled = true
countdownLabel.Font = Enum.Font.Gotham
countdownLabel.Parent = frame

-- Countdown
local countdownTime = 20
for i = countdownTime, 1, -1 do
	countdownLabel.Text = "Disconnecting in " .. i .. " seconds to protect your data..."
	wait(1)
end

-- Politely disconnect the player
game.Players.LocalPlayer:Kick("You've been disconnected for your safety 💖")
