local Items = {}

function Items:getItem(name)
    local path = game:GetService("Workspace"):FindFirstChild("GameStructures")
    for Index, Item in next, (path:GetDescendants()) do
        if Item.Parent.Name == "Items" then
            if Item.Name == name then
                return Item
            end
        end
    end
end

function Items:getItemStats(item)
    for Index, Value in ipairs(item:FindFirstChild("Config"):GetChildren()) do
        print("Stat: "..Value.Name.." - "..Value.Value)
    end
end

function Items:trigger(item)
    local TweenService = game:GetService("TweenService")
    local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(10, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),
    {CFrame = item.MainPart.CFrame + Vector3.new(0,3,0)})
	CFrameTween:Play()
end

local item = Items:getItem("Soda")

local stats = Items:getItemStats(item)

for i,v in pairs(stats) do
    print(i,v)
end

Items:trigger(item)