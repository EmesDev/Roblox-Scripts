local Players = game:GetService("Players")
local UserInputService = game:GetService("UserInputService")

-- local player = game.Players.LocalPlayer
local Player = Players.LocalPlayer
local Character =  Player.Character or Player.CharacterAdded:Wait()
repeat wait() until Character:FindFirstChild("Humanoid")


local Mouse = Player:GetMouse()

local Debounce = false


Player.CameraMode = Enum.CameraMode.LockFirstPerson
Mouse.Icon = "rbxassetid://417446600"

UserInputService.InputBegan:Connect(function(Key, GameProcessedEvent)
    if GameProcessedEvent then return end
    
    if Key.KeyCode == Enum.KeyCode.V and Debounce == false then
        Debounce = true

        Player.CameraMode = Enum.CameraMode.Classic

        Player.CameraMinZoomDistance = 10

        Player.CameraMaxZoomDistance = 400
        Player.CameraMinZoomDistance = 0.5

        Mouse.Icon = "rbxassetid://SystemCursors/PointingHand"

    elseif Key.KeyCode == Enum.KeyCode.V and Debounce == true then

        Debounce = false

        Player.CameraMode = Enum.CameraMode.LockFirstPerson
        Mouse.Icon = "rbxassetid://417446600"

        
    end
end)