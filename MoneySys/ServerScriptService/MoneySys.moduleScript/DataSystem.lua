local DataSystem = {}

function DataSystem:NewData(Player)
	local Leaderstats = Instance.new("Folder")
	Leaderstats.Name = "leaderstats"
	Leaderstats.Parent = Player

	local Cash = Instance.new("IntValue")
	Cash.Name = "Cash"
	Cash.Value = 0
	
	Cash.Parent = Leaderstats
end

return DataSystem