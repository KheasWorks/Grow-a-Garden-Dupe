-- Create the ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "PatchNotice"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

-- Create the Frame
local frame = Instance.new("Frame")
frame.Size = UDim2.new(0.45, 0, 0.25, 0)
frame.Position = UDim2.new(0.275, 0, 0.375, 0)
frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
frame.BorderSizePixel = 0
frame.BackgroundTransparency = 0.1
frame.Parent = screenGui

-- Create the Title Label
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, 0, 0.4, 0)
titleLabel.Position = UDim2.new(0, 0, 0, 0)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "⚠️ Script Patched"
titleLabel.TextColor3 = Color3.fromRGB(255, 85, 85)
titleLabel.TextScaled = true
titleLabel.Font = Enum.Font.GothamBold
titleLabel.Parent = frame

-- Create the Info Label
local infoLabel = Instance.new("TextLabel")
infoLabel.Size = UDim2.new(0.9, 0, 0.5, 0)
infoLabel.Position = UDim2.new(0.05, 0, 0.45, 0)
infoLabel.BackgroundTransparency = 1
infoLabel.Text = "This script has been patched and is no longer usable.\nDon't worry — this is not a stealing script or anything malicious."
infoLabel.TextColor3 = Color3.fromRGB(200, 200, 200)
infoLabel.TextScaled = true
infoLabel.TextWrapped = true
infoLabel.Font = Enum.Font.Gotham
infoLabel.Parent = frame

-- Optional: Auto-destroy after 10 seconds
delay(20, function()
    screenGui:Destroy()
end)
