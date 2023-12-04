local DataSystem = {}

function DataSystem:NewData(Player)
    local Leaderstats = Instance.new("Folder")
    Leaderstats.Name = "leaderstats"
    Leaderstats.Parent = Player

    local cash = Instance.new("IntValue")
    cash.Name = "Cash"
    cash.Value = 0
    
end

return DataSystem