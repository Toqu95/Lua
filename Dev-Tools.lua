local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local Framework = {}

function Framework.BindFuncToKey(key, func)
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(k)
        if k.KeyCode == key then
            func()
        end
    end)
end

function Framework.SendNotify(_Title, _Message, _Duration)
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = _Title,
        Text = _Message,
        Duration = _Duration
    })
end

local newUI = Material.Load({
	Title = "LunaHub | Dev-tools",
	Style = 3,
	SizeX = 500,
	SizeY = 450,
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

local H = main.TextField({
	Text = "Table Search{Child}",
	Callback = function(Value)
		for i,v in next, getreg() do
            if type(v) == "table" then
                if v[tostring(Value)] then
                    Framework.SendNotify(tostring(Value).." Found", tostring(Value).." Found in table "..tostring(v), 3)
                    local newstring = 
                        "function getTable"..tostring(Value).."()\n"
                        .."\tfor _, v in next, getreg() do"
                        .."\n\t\tif type(v) == 'table' then\n"
                        .."\t\t\tif v".."['"..tostring(Value).."']".. " then\n"
                        .."\t\t\t\treturn v"
                        .."\n\t\t\tend"
                        .."\n\t\tend"
                        .."\n\tend"
                        .."\nend"
                    setclipboard(newstring)
                    return true
                end
            end
        end
	end,
	Menu = {
		Ammo = function(self)
			self.SetText("Ammo")
		end
	}
})

local H = main.TextField({
	Text = "Table Children{Child}",
	Callback = function(Value)
        local testeditor = newUI.New({
            Title = "Table: "..tostring(Value)
        })
		for i,v in next, getreg() do
            if type(v) == "table" then
                if v[tostring(Value)] then
                    if v then
                        Framework.SendNotify(tostring(Value).." Found", tostring(Value).." Found in table "..tostring(v), 3)
                        print("Table: "..tostring(v))
                        local count = 0
                        for i2,v2 in pairs(v) do
                            count = count + 1
                            --print(count.." ".."Index: "..tostring(i2).." Value: "..tostring(v2))
                            if type(v2) == "number" then
                                local test1 = testeditor.TextField({
                                    Text = count.." "..tostring(i2)..": "..tostring(v2),
                                    Callback = function(Value2)
                                        v[tostring(i2)] = tonumber(Value2)
                                        print(v[tostring(i2)])
                                        Framework.SendNotify(tostring(v), tostring(Value2), 3)
                                    end
                                })
                            end
                            if type(v2) == "boolean" then
                                local test2 = testeditor.Toggle({
                                    Text = count.." "..tostring(i2)..": "..tostring(v2),
                                    Callback = function(Value2)
                                        v[tostring(i2)] = (Value2)
                                        print(v[tostring(i2)])
                                        Framework.SendNotify(tostring(v), tostring(Value2), 3)
                                    end,
                                    Enabled = false
                                })
                            end
                            if type(v2) == "table" then
                                local test3 = testeditor.Button({
                                    Text = count.." "..tostring(i2)..": "..tostring(v2),
                                    Callback = function()
                                        print(v[tostring(i2)])
                                        local newstring = 
                                        "function getTable"..tostring(Value).."()\n"
                                        .."\tfor _, v in next, getreg() do"
                                        .."\n\t\tif type(v) == 'table' then\n"
                                        .."\t\t\tif v".."['"..tostring(Value).."']".. " then\n"
                                        .."\t\t\t\treturn v['"..tostring(i2).."']"
                                        .."\n\t\t\tend"
                                        .."\n\t\tend"
                                        .."\n\tend"
                                        .."\nend"
                                        setclipboard(newstring)
                                    end,
                                    Enabled = false
                                })
                            end
                        end
                    end
                end
            end
        end
	end,
	Menu = {
		Ammo = function(self)
			self.SetText("Ammo")
		end
	}
})

local G = main.TextField({
    Text = "Function Search{Name}",
	Callback = function(Value)
        for i, v in next, getgc() do
            if type(v) == "function" then
                if debug.getinfo(v).name == tostring(Value) then
                    Framework.SendNotify(tostring(Value).." Found", tostring(Value), 3)
                    local newstring =
                    "function getFunction"..tostring(Value).."()\n"
                    .."\tfor i, v in next, getgc() do\n"
                    .."\t\tif type(v) == 'function' then\n"
                    .."\t\t\tif debug.getinfo(v).name == tostring('"..Value.."') then\n"
                    .."\t\t\t\treturn v"
                    .."\n\t\t\tend"
                    .."\n\t\tend"
                    .."\n\tend"
                    .."\nend"
                    setclipboard(newstring)
                    return true
                end
            end
        end
    end,
    Menu = {
		Connect = function(self)
			self.SetText("Connect")
		end
	}
})

local C = main.TextField({
    Text = "Function Upvalues{Name}",
	Callback = function(Value)
        for i, v in next, getgc() do
            if type(v) == "function" then
                if debug.getinfo(v).name == tostring(Value) then
                    local testeditor = newUI.New({
                        Title = "Function: "..tostring(Value)
                    })
                    --Framework.SendNotify(tostring(Value).." Found", tostring(Value), 3)
                    --local count = 0
                    for i2, v2 in pairs(debug.getupvalues(v)) do
                        --count = count + 1
                        print(i2,v2)
                        if type(v2) == "table" then
                            print("Table: "..(v2))
                            local test3 = testeditor.Button({
                                Text = tostring(v2),
                                Callback = function()
                                    print(2)
                                end
                            })
                        end
                    end
                    return true
                end
            end
        end
    end,
    Menu = {
		Connect = function(self)
			self.SetText("Connect")
		end
	}
})