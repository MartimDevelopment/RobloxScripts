--[[
    Script Name: CameraShake
    Description: Shakes the Camera while the Player moves
    
    Created By: Martimf95
    Creation Date: 02.01.2025
    
    Last Edited By: Martimf95
    Last Edit Date: 03.01.2025
    
    Version: V1.2

    Credits: Martimf95[V1.0]-[V1.2]
--]]

local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer
local character = script.Parent.Parent
local humanoid = character:WaitForChild("Humanoid")

function updateCameraShake()
	local currentTime = tick()
	
	local speed = (player.Character.PrimaryPart.Velocity.Magnitude)/15
	if speed > 1.4 then speed *= 0.6 end
	
	if humanoid.MoveDirection.Magnitude > 0 then 
		local shakeX = math.cos(currentTime * 10) * .5 * speed
		local shakeY = math.abs(math.sin(currentTime * 10)) * .8 * speed
		local shake = Vector3.new(shakeX, shakeY, 0)
		humanoid.CameraOffset = humanoid.CameraOffset:lerp(shake, .4) * speed
		
	--- Standing (No movement)
	else
		local shakeX = math.cos(currentTime * 2) * .8
		local shakeY = math.abs(math.sin(currentTime * 2)) * .3
		local shake = Vector3.new(shakeX, shakeY, 0)
		humanoid.CameraOffset = humanoid.CameraOffset:lerp(shake, .3) * .2
	end
end

runService.RenderStepped:Connect(updateCameraShake)