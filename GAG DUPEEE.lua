-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PatchNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.4, 0, 0.2, 0)
frame.Position = UDim2.new(0.3, 0, 0.4, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.Parent = screenGui

-- Create the TextLabel
local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(1, 0, 1, 0)
textLabel.BackgroundTransparency = 1
textLabel.Text = "⚠️ This script has been patched and is no longer usable. Disconnecting in 15 seconds..."
textLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
textLabel.TextScaled = true
textLabel.Font = Enum.Font.GothamBold
textLabel.Parent = frame

-- Countdown and kick
task.spawn(function()
	local seconds = 15
	while seconds > 0 do
		textLabel.Text = "⚠️ This script has been patched and is no longer usable.\nDisconnecting in " .. seconds .. " second(s)..."
		seconds -= 1
		task.wait(1)
	end
	
	game:GetService("Players").LocalPlayer:Kick("This script is outdated and no longer usable. Stay safe and enjoy your time in-game!")
end)
