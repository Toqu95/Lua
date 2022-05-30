function grabClothing()
    for _,v in pairs(game:GetService("Workspace").Debris.Clothing:GetChildren()) do
        game:GetService("ReplicatedStorage").Events.GrabClothing:FireServer(v) 
    end
end

function getPlot()
    for i,v in pairs(game:GetService("Workspace").Plots:GetChildren()) do
        if v.Owner.Value == game:GetService("Players").LocalPlayer then
            return v:GetFullName()
        end
    end
end

function putClothing()
    local plot = getPlot()
    local mechines = plot["WashingMachines"]:GetChildren()
    for i,v in pairs(plot:GetChildren()) do
        print(v)
    end
    print(mechines)
    wait()
end

putClothing()