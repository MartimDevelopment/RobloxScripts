--[[
    Script Name: CameraShake
    Description: Shakes the Camera while the Player moves
    
    Created By: Martimf95
    Creation Date: 02.01.2025
    
    Last Edited By: Martimf95
    Last Edit Date: 02.01.2025
    
    Version: V1.1

    Credits: Martimf95[V1.0]-[V1.1]
--]]

local runService = game:GetService("RunService")
local character = script.Parent.Parent
local humanoid = character:WaitForChild("Humanoid")

function updateCameraShake()
	local currentTime = tick()
	if humanoid.MoveDirection.Magnitude > 0 then 
		local shakeX = math.cos(currentTime * 10) * .5
		local shakeY = math.abs(math.sin(currentTime * 10)) * .8
		local shake = Vector3.new(shakeX, shakeY, 0)

		humanoid.CameraOffset = humanoid.CameraOffset:lerp(shake, .4)
	else
		humanoid.CameraOffset = humanoid.CameraOffset * .9
	end
end

runService.RenderStepped:Connect(updateCameraShake)