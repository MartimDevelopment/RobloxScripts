--[[
    Script Name: ShiftToRun
    Description: The Character runs on Left-Shift pressed
    
    Created By: Martimf95
    Creation Date: 02.01.2025
    
    Last Edited By: Martimf95
    Last Edit Date: 03.01.2025
    
    Version: V1.0

    Credits: Martimf95[V1.0]
--]]

local UserInputService = game:GetService("UserInputService")

local character = script.Parent
local humanoid = character:WaitForChild("Humanoid")
local isRunning = false

UserInputService.InputBegan:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		if not isRunning then
			isRunning = true
			humanoid.WalkSpeed = 32
		end
	end
end)

UserInputService.InputEnded:Connect(function(input)
	if input.KeyCode == Enum.KeyCode.LeftShift then
		humanoid.WalkSpeed = 10
		isRunning = false
	end
end)