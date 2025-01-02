--[[
    Script Name: Curser
    Description: Creates a locked Curser, that replaces the mouse, in the middle of the Screen
    
    Created By: Martimf95
    Creation Date: 02.01.2025
    
    Last Edited By: Martimf95
    Last Edit Date: 02.01.2025
    
    Version: V1.0

    Credits: Martimf95[V1.0]
--]]

-- GUI
-- The verticalBar and horizontalBar are used to create the cursor (cross)
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "CursorGui"
screenGui.ResetOnSpawn = false
screenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

local verticalBar = Instance.new("Frame")
verticalBar.Name = "VerticalBar"
verticalBar.Size = UDim2.new(0, 2, 0, 15)
verticalBar.BackgroundColor3 = Color3.new(1, 1, 1)
verticalBar.BorderSizePixel = 0
verticalBar.AnchorPoint = Vector2.new(0.5, 0.5)
verticalBar.Position = UDim2.new(0.5, 0, 0.5, 0)
verticalBar.Parent = screenGui

local horizontalBar = Instance.new("Frame")
horizontalBar.Name = "HorizontalBar"
horizontalBar.Size = UDim2.new(0, 15, 0, 2)
horizontalBar.BackgroundColor3 = Color3.new(1, 1, 1)
horizontalBar.BorderSizePixel = 0
horizontalBar.AnchorPoint = Vector2.new(0.5, 0.5)
horizontalBar.Position = UDim2.new(0.5, 0, 0.5, 0)
horizontalBar.Parent = screenGui

-- Deactivation of the MouseIcon + locking the mouse in the center of the screen
local userInputService = game:GetService("UserInputService")
userInputService.MouseIconEnabled = false
userInputService.MouseBehavior = Enum.MouseBehavior.LockCenter