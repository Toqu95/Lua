local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local newUI = Material.Load({
	Title = "LunaHub | Treasure Rush🏖️",
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

local upgrades = newUI.New({
	Title = "Upgrades"
})

local A = main.Button({
	Text = "Rainbow and Omega pets",
	Callback = function()
		for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerStats.Pets:GetChildren()) do
			if v.IsRainbow.Value == true and v.IsOmega.Value == true then
				continue
			else
				v.IsRainbow.Value = true
				v.IsOmega.Value = true
			end
		end
		print("All pets are omega and rainbow now!")
	end
})

AutoUpgrade = false

local B = upgrades.Toggle({
	Text = "Auto upgrade shovel",
	Callback = function(Value)
		AutoUpgrade = Value
	end,
	Enabled = false
})


function upgradeShovel()
	local shovel = game:GetService("Players").LocalPlayer.PlayerStats.Equipped.Shovel.Value
	local shovelRemote = game:GetService("ReplicatedStorage").Remotes.Shop.RequestShovel
	
	if shovel == "Shovel" then
		shovelRemote:InvokeServer("Toy Shovel")
	elseif shovel == "Toy Shovel" then
		shovelRemote:InvokeServer("Gummi Shovel")
	elseif shovel == "Gummi Shovel" then
		shovelRemote:InvokeServer("Snow Shovel")
	elseif shovel == "Snow Shovel" then
		shovelRemote:InvokeServer("Spork")
	elseif shovel == "Spork" then
		shovelRemote:InvokeServer("Tri-Shovel")
	elseif shovel == "Tri-Shovel" then
		shovelRemote:InvokeServer("Magma Shovel")
	elseif shovel == "Magma Shovel" then
		shovelRemote:InvokeServer("Water Shovel")
	elseif shovel == "Water Shovel" then
		shovelRemote:InvokeServer("Vine Shovel")
	elseif shovel == "Vine Shovel" then
		shovelRemote:InvokeServer("Demonic Shovel")
	elseif shovel == "Demonic Shovel" then
		shovelRemote:InvokeServer("Holy Shovel")
	elseif shovel == "Holy Shovel" then
		shovelRemote:InvokeServer("Bolt Shovel")
	elseif shovel == "Bolt Shovel" then
		shovelRemote:InvokeServer("Futuristic Shovel")
	elseif shovel == "Futuristic Shovel" then
		shovelRemote:InvokeServer("Jackhammer")
	elseif shovel == "Jackhammer" then
		shovelRemote:InvokeServer("Drill")
	elseif shovel == "Drill" then
		shovelRemote:InvokeServer("Magma Drill")
	elseif shovel == "Magma Drill" then
		shovelRemote:InvokeServer("Royal Drill")
	elseif shovel == "Royal Drill" then
		shovelRemote:InvokeServer("Scythe")
	elseif shovel == "Scythe" then
		shovelRemote:InvokeServer("Demon Scythe")
	elseif shovel == "Demon Scythe" then
		shovelRemote:InvokeServer("Raygun")
	elseif shovel == "Raygun" then
		shovelRemote:InvokeServer("Gold Scythe")
	elseif shovel == "Gold Scythe" then
		shovelRemote:InvokeServer("Magma Scythe")
	elseif shovel == "Magma Scythe" then
		shovelRemote:InvokeServer("Shovel With No Brim")
	elseif shovel == "Shovel With No Brim" then
		shovelRemote:InvokeServer("Banana")
	end
end

while wait() do
	if AutoUpgrade == true then
		upgradeShovel()
	end	
end