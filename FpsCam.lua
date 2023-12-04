local Players = game:GetService("Players")

local Player = Players.LocalPlayer
local Character =  Player.Character or Player.CharacterAdded:Wait()
repeat wait() until Character:FindFirstChild("Humanoid")

local Mouse = Player:GetMouse()

Player.CameraMode = Enum.CameraMode.LockFirstPerson
Mouse.Icon = "rbxassetid://417446600"
