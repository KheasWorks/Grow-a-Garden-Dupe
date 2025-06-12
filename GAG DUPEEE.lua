-- LocalScript (place in StarterPlayerScripts or similar)

local Players = game:GetService("Players")
local player = Players.LocalPlayer

-- GUI creation
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "SecurityNotice"
screenGui.Parent = player:WaitForChild("PlayerGui")

local textLabel = Instance.new("TextLabel")
textLabel.Size = UDim2.new(0.5, 0, 0.2, 0)
textLabel.Position = UDim2.new(0.25, 0, 0.4, 0)
textLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
textLabel.BackgroundTransparency = 0.5
textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
textLabel.Font = Enum.Font.SourceSansBold
textLabel.TextSize = 24
textLabel.Text = "This script has been patched. You have nothing to worry about.\nDisconnecting for your protection in 20 seconds..."
textLabel.Parent = screenGui

-- Countdown
for i = 20, 1, -1 do
	textLabel.Text = "This script has been patched. You have nothing to worry about.\nDisconnecting for your protection in " .. i .. " seconds..."
	wait(1)
end

-- Kick player politely
game:GetService("ReplicatedStorage"):WaitForChild("KickPlayer"):FireServer("You have been safely disconnected to protect your data. No worries!")

-- ServerScript to handle kick (place in ServerScriptService)
-- Make sure a RemoteEvent named "KickPlayer" is in ReplicatedStorage

--[[
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local KickPlayer = Instance.new("RemoteEvent", ReplicatedStorage)
KickPlayer.Name = "KickPlayer"

KickPlayer.OnServerEvent:Connect(function(player, message)
	player:Kick(message or "You have been disconnected.")
end)
]]

