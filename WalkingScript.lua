local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
repeat wait() until char:FindFirstChild("Humanoid")
local humanoid = char.Humanoid


local function handleWalking(shouldWalking)
	if shouldWalking == true then
		--humanoid.WalkSpeed = 2 * 16
		humanoid.WalkSpeed *= 0.5
	else
		humanoid.WalkSpeed = 16

	end
	
end



local function handleInput(actionName, inputState, inputObject)
	print(actionName, inputState)
	if actionName == "Walking" then		
		local shouldWalking = false
		
		if inputState == Enum.UserInputState.Begin then
			shouldWalking = true
		end
		
		handleWalking(shouldWalking)
	end
end

local function listenInput()
	ContextActionService:BindAction("Walking", handleInput, true, Enum.KeyCode.LeftAlt, Enum.KeyCode.ButtonB)
end

listenInput()