local Players = game:GetService("Players")

local DataSystem =  require(script:WaitForChild("DataSystem"))

Players.PlayerAdded:Connect(function(Player)
	print("[" .. Player.Name .. "] Have entered in game.")
	DataSystem:NewData(Player)
end)