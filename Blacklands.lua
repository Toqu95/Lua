local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local newUI = Material.Load({
	Title = "LunaHub | Blacklands",
	Style = 3,
	SizeX = 400,
	SizeY = 250,
	Theme = "Dark",
	ColorOverrides = {
		MainFrame = Color3.fromRGB(0, 42, 104),
		TitleBar = Color3.fromRGB(102, 138, 158),
		TitleBarAccent = Color3.fromRGB(255,255,255)
	}
})

local main = newUI.New({
	Title = "Main"
})

local Gun = newUI.New({
	Title = "Gun Mods"
})

local C = main.Slider({
	Text = "FOV",
	Callback = function(Value)
		game:GetService("Workspace").Camera.FieldOfView = Value
	end,
	Min = 40,
	Max = 120,
	Def = 70
})



local F = Gun.Slider({
    Text = "Mod Range",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.Range = Value
        end
    end,
    Min = 0,
    Max = 10000,
    Def = 10
})

local F2 = Gun.Slider({
    Text = "Mod Spread",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.Spread = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F3 = Gun.Slider({
    Text = "Mod Damage",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.Damage = Value
        end
    end,
    Min = 0,
    Max = 200,
    Def = 10
})

local F4 = Gun.Slider({
    Text = "Mod RecoilY",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.RecoilY = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F5 = Gun.Slider({
    Text = "Mod RecoilX",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.RecoilX = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F6 = Gun.Slider({
    Text = "Mod AimSpread",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.AimSpread = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F7 = Gun.Slider({
    Text = "Mod RecoilCameraY",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.RecoilCameraY = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F8 = Gun.Slider({
    Text = "Mod FireCooldown",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.FireCooldown = Value
        end
    end,
    Min = 0,
    Max = 100,
    Def = 10
})

local F9 = Gun.Slider({
    Text = "Mod AimFOV",
    Callback = function(Value)
        function getTableRevolver()
            for _, v in next, getreg() do
                if type(v) == 'table' then
                    if v['Revolver'] then
                        return v
                    end
                end
            end
        end
        
        for i,v in pairs(getTableRevolver()) do
            
            v.AimFOV = Value
        end
    end,
    Min = 0,
    Max = 200,
    Def = 10
})

local esp = main.Button({
    Text = "Unnamed-Esp",
    Callback = function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
    end
})

for i,v in pairs(getsenv(game:GetService("Players").Toquzz.PlayerScripts.Handler)) do
    print(i,v)
end