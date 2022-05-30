local Harvs = game:GetService("Workspace").Harvestable.World

local _entities = 0
for _, v in pairs(Harvs:GetChildren()) do
    if v.Name == "Rock" then
        _entities += 1
    end
end
print(_entities.."Rocks")
for _, v in pairs(Harvs:GetChildren()) do
    wait()
    if v.Name == "Rock" then
        game:GetService("ReplicatedStorage").Events.Harvest.Harvest:FireServer(v)
        wait()
        for _, v2 in pairs(game:GetService("Workspace").Plots:GetChildren()) do
            game:GetService("ReplicatedStorage").Events.Inventory.PickUp:FireServer(v2.Entities:FindFirstChild("DroppedItem"))
        end
    end
    print("Done!")
end

game:GetService("ReplicatedStorage").Events.Harvest.Harvest:FireServer(Harvs:FindFirstChild("Rock"))