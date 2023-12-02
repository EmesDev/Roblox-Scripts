local Players = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")

local player = Players.LocalPlayer
local char = player.Character or player.CharacterAdded:Wait()
repeat wait() until char:FindFirstChild("Humanoid")
local humanoid = char.Humanoid


local function handleSprint(shouldSprint)
	if shouldSprint == true then
		--humanoid.WalkSpeed = 2 * 16
		humanoid.WalkSpeed *= 2
	else
		humanoid.WalkSpeed = 16

	end
	
end

local function handleInput(actionName, inputState, inputObject)
	print(actionName, inputState)
	if actionName == "Sprint" then		
		local shouldSprint = false
		
		if inputState == Enum.UserInputState.Begin then
			shouldSprint = true
		end
		
		handleSprint(shouldSprint)
	end
end

local function listenInput()
	ContextActionService:BindAction("Sprint", handleInput, true, Enum.KeyCode.LeftShift, Enum.KeyCode.ButtonX)
end

listenInput()