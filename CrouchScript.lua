local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
repeat wait() until char:FindFirstChild("Humanoid")
local humanoid = char.Humanoid


local function handleCrouch(shouldCrouch)
	if shouldCrouch == true then
		--humanoid.WalkSpeed = 2 * 16
		humanoid.WalkSpeed *= 0.5
	else
		humanoid.WalkSpeed = 16

	end
	
end



local function handleInput(actionName, inputState, inputObject)
	print(actionName, inputState)
	if actionName == "Crouch" then		
		local shouldCrouch = false
		
		if inputState == Enum.UserInputState.Begin then
			shouldCrouch = true
		end
		
		handleCrouch(shouldCrouch)
	end
end

local function listenInput()
	ContextActionService:BindAction("Crouch", handleInput, true, Enum.KeyCode.C, Enum.KeyCode.ButtonR3)
end

listenInput()