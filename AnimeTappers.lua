-- init
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/GreenDeno/Venyx-UI-Library/main/source.lua"))()
local venyx = library.new("Anime Tappers", 5013109572)

-- themes
local themes = {
Background = Color3.fromRGB(24, 24, 24),
Glow = Color3.fromRGB(0, 0, 0),
Accent = Color3.fromRGB(10, 10, 10),
LightContrast = Color3.fromRGB(20, 20, 20),
DarkContrast = Color3.fromRGB(14, 14, 14),  
TextColor = Color3.fromRGB(255, 255, 255)
}

local Main = venyx:addPage("Main", 5012544693)
local Teleports = venyx:addPage("Teleports", 5012544693)
local Xmas = venyx:addPage("Xmas", 5012544693)
local TPsection = Teleports:addSection("Teleports")
local XmasStuff = Xmas:addSection("Xmas Section")
local section = Main:addSection("Auto Stuff")
local section2 = Main:addSection("Locals")
local section3 = Main:addSection("Settings")

XmasStuff:addButton("Collect Advent Calendar", function()
    local _table = workspace:FindFirstChild("AdventCalendar").Doors:GetChildren()
    for index, door in pairs(_table) do
        game:GetService("ReplicatedStorage").Remotes.Events.OpenDoor:FireServer(door)
        wait()
    end
end)

TPsection:addButton("Starter World", function()
    game:GetService("ReplicatedStorage").Remotes.Events.WorldRemote:FireServer("StarterWorld")
end)
for _,v in pairs(game:GetService("ReplicatedStorage").WorldContents:GetChildren()) do
    TPsection:addButton(v.Name, function()
        game:GetService("ReplicatedStorage").Remotes.Events.WorldRemote:FireServer(tostring(v.Name))
    end)
end

section2:addButton("Collect Yen", function()
    local tp = Instance.new("Part")
    tp.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
    tp.Size = Vector3.new(1,1,1)
    tp.CanCollide = false
    tp.Anchored = true
    tp.Parent = game:GetService("Workspace")

    for _, v in ipairs(game:GetService("Workspace").Worlds.StarterWorld.Yen:GetChildren()) do
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame
        wait(0.1)
    end

    game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = tp.CFrame
    wait()
    tp:Destroy()
end)

section2:addButton("Get Lucky Gamepass", function()
    local EggFramework = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.EggFramework)
    setupvalue(EggFramework.CheckLuckyPass, 1, true)
    EggFramework.CheckLuckyPass()
end)

section3:addKeybind("Toggle Keybind", Enum.KeyCode.One, function()
    print("Activated Keybind")
    venyx:toggle()
    end, function()
    print("Changed Keybind")
end)

local autoTap = false
local autoCraftAll = false
local autoOpenClosestEgg = false
local autoEquipBest = false
local autoBattle = false

section:addToggle("Auto Tap", nil, function(value)
    autoTap = value
end)

section:addToggle("Auto Battle", nil, function(value)
    autoBattle = value
end)

section:addToggle("Auto Open Egg", nil, function(value)
    autoOpenClosestEgg = value
end)

section:addToggle("Auto Craft All", nil, function(value)
    autoCraftAll = value
end)

section:addToggle("Auto Equip Best", nil, function(value)
    autoEquipBest = value
end)

-- load
venyx:SelectPage(venyx.pages[1], true)

while true do wait()
    if autoTap == true then
        game:GetService("ReplicatedStorage").Remotes.Events.Tap:FireServer()
        game:GetService("ReplicatedStorage").Remotes.Events.UpdateCombo:FireServer()
    end
    if autoCraftAll == true then
        wait()
        game:GetService("ReplicatedStorage").Remotes.Events.CraftAll:FireServer(true)
    end
    if autoEquipBest == true then
        wait()
        game:GetService("ReplicatedStorage").Remotes.Events.EquipBest:FireServer(true)
    end
    if autoOpenClosestEgg == true then
        local EggFramework = getsenv(game:GetService("Players").LocalPlayer.PlayerScripts.EggFramework)
        local egg = EggFramework.GetClosestEgg()
        game:GetService("ReplicatedStorage").Remotes.Events.PurchaseEgg:FireServer(tostring(egg), 1, true)
        wait()
    end
    if autoBattle == true then
        game:GetService("ReplicatedStorage").Remotes.Events.EquipBest:FireServer(true)
        wait()
    end
end