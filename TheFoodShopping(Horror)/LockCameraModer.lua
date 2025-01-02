--[[
    Script Name: LockCameraMode
    Description: Locks the Camera in First Person when the Character is created
    
    Created By: Martimf95
    Creation Date: 02.01.2025
    
    Last Edited By: Martimf95
    Last Edit Date: 02.01.2025
    
    Version: V1.0

    Credits: Martimf95[V1.0]
--]]

local players = game:GetService("Players")
local currentPlayer = players.LocalPlayer

currentPlayer.CameraMode = Enum.CameraMode.LockFirstPerson