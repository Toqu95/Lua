local StarterGui = game:GetService("StarterGui")
local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local newUI = Material.Load({
	Title = "LunaHub | Super Slayers",
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

local farms = newUI.New({
	Title = "AutoFarm"
})

local menues = newUI.New({
	Title = "Menues"
})

local open = newUI.New({
	Title = "Open Creates"
})

local open3 = newUI.New({
	Title = "Open Creates 3"
})

local info = newUI.New({
	Title = "Info"
})

bossExist = false

local farm = farms.Toggle({
	Text = "Auto Farm Spawn-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Spawn.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Spawn.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist = false
		end)
		if Value == true then
			repeat wait()
				if bossExist and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Spawn.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Spawn.BossSpawns.BossSpawn.Boss01, "Full")
					bossExist = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist2 = false

local farm2 = farms.Toggle({
	Text = "Auto Farm Desert-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Desert.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist2 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Desert.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist2 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist2 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Desert.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Desert.BossSpawns.BossSpawn.Boss02, "Full")
					bossExist2 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist3 = false

local farm3 = farms.Toggle({
	Text = "Auto Farm Cave-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Cave.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist3 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Cave.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist3 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist3 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Cave.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Cave.BossSpawns.BossSpawn.Boss03, "Full")
					bossExist3 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist4 = false

local farm4 = farms.Toggle({
	Text = "Auto Farm Beach-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Beach.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist4 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Beach.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist4 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist4 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Beach.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Beach.BossSpawns.BossSpawn.Boss04, "Full")
					bossExist4 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist5 = false

local farm5 = farms.Toggle({
	Text = "Auto Farm Lava-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Lava.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist5 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Lava.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist5 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist5 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Lava.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Lava.BossSpawns.BossSpawn.Boss05, "Full")
					bossExist5 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist6 = false

local farm6 = farms.Toggle({
	Text = "Auto Farm Forest-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Forest.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist6 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Forest.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist6 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist6 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Forest.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Forest.BossSpawns.BossSpawn.Boss06, "Full")
					bossExist6 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist7 = false

local farm7 = farms.Toggle({
	Text = "Auto Farm Graveyard-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Graveyard.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist7 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Graveyard.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist7 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist7 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Graveyard.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Graveyard.BossSpawns.BossSpawn.Boss07, "Full")
					bossExist7 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist8 = false

local farm8 = farms.Toggle({
	Text = "Auto Farm Halloween-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Halloween.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist8 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Halloween.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist8 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist8 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Halloween.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Halloween.BossSpawns.BossSpawn.Boss08, "Full")
					bossExist8 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist9 = false

local farm9 = farms.Toggle({
	Text = "Auto Farm Swamp-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Swamp.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist9 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Swamp.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist9 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist9 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Swamp.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Swamp.BossSpawns.BossSpawn.Boss09, "Full")
					bossExist9 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist10 = false

local farm10 = farms.Toggle({
	Text = "Auto Farm Toxic-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Toxic.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist10 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Toxic.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist10 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist10 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Toxic.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Toxic.BossSpawns.BossSpawn.Boss10, "Full")
					bossExist10 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist11 = false

local farm11 = farms.Toggle({
	Text = "Auto Farm Candy-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Candy.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist11 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Candy.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist11 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist11 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Candy.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Candy.BossSpawns.BossSpawn.Boss11, "Full")
					bossExist11 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist12 = false

local farm12 = farms.Toggle({
	Text = "Auto Farm Pirate-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Pirate.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist12 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Pirate.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist12 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist12 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Pirate.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Pirate.BossSpawns.BossSpawn.Boss12, "Full")
					bossExist12 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist13 = false

local farm13 = farms.Toggle({
	Text = "Auto Farm Glacier-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.Glacier.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist13 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.Glacier.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist13 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist13 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.Glacier.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.Glacier.BossSpawns.BossSpawn.Boss13, "Full")
					bossExist13 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

bossExist14 = false

local farm14 = farms.Toggle({
	Text = "Auto Farm VIP-Boss",
	Callback = function(Value)
		local teleport = true
		game:GetService("Workspace").SpawnGroups.VIP.BossSpawns.BossSpawn.ChildAdded:Connect(function(boss)
			if boss ~= nil then
				bossExist14 = true
			end
		end)
		game:GetService("Workspace").SpawnGroups.VIP.BossSpawns.BossSpawn.ChildRemoved:Connect(function(boss)
			bossExist14 = false
		end)
		if Value == true then
			repeat wait()
				if bossExist14 and Value == true then
					local TweenService = game:GetService("TweenService")
					local boss = game:GetService("Workspace").SpawnGroups.VIP.BossSpawns.BossSpawn
					if teleport == true then
						if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position ~= boss.Position then
							local CFrameTween = TweenService:Create(game.Players.LocalPlayer.Character.HumanoidRootPart, TweenInfo.new(5, Enum.EasingStyle.Linear, Enum.EasingDirection.Out,0,false,0),{CFrame = boss.CFrame + Vector3.new(0,3,0)})
							CFrameTween:Play()
							wait(5)
							teleport = false
						end
					end
					game:GetService("ReplicatedStorage").Remotes.AttackTarget:FireServer(game:GetService("Workspace").SpawnGroups.VIP.BossSpawns.BossSpawn.BossSpecial01, "Full")
					bossExist14 = false
				else
					print("False")
				end
				if Value == false then
					return false
				end
			until Value == false
		end
	end,
	Enabled = false
})

local Rejoin = main.Button({
	Text = "Rejoin",
	Callback = function()
		game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer)
	end
})

local SpeedUpAnim = main.Button({
	Text = "Speed up orbs",
	Callback = function()
		local scr = require(game:GetService("Players").LocalPlayer.PlayerScripts.ClientService.Orb)
		local new = scr.new
		debug.setconstant(new, 62, 0)
		debug.setconstant(new, 74, 0)
	end
})

local antiKick = main.Button({
	Text = "Anti-Kick",
	Callback = function()
		local vu = game:GetService("VirtualUser")
		game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({Text = "This makes it possible to AFK without getting kicked."})
		end
	}
})

local TP = menues.Button({
	Text = "Toggle Teleport-Menu",
	Callback = function()
		if game:GetService("Players").LocalPlayer.PlayerGui.Hud.Teleport.Visible == false then
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.Teleport.Visible = true
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.Teleport.Visible = false
		end
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "This opens teleport menu without gamepass."
			})
		end
	}
})

local Upgrade = menues.Button({
	Text = "Toggle Upgrade-Menu",
	Callback = function()
		if game:GetService("Players").LocalPlayer.PlayerGui.Hud.UpgradeSword.Visible == false then
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.UpgradeSword.Visible = true
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.UpgradeSword.Visible = false
		end
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "This opens upgrade menu."
			})
		end
	}
})

local Enchant = menues.Button({
	Text = "Toggle Enchant-Menu",
	Callback = function()
		if game:GetService("Players").LocalPlayer.PlayerGui.Hud.Enchant.Visible == false then
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.Enchant.Visible = true
		else
			game:GetService("Players").LocalPlayer.PlayerGui.Hud.Enchant.Visible = false
		end
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "This opens enchant menu."
			})
		end
	}
})

local open = open.DataTable({
	Text = "Open Create 1",
	Callback = function(ChipSet)
		if ChipSet.BasicSpawnCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Spawn01", false)
			until ChipSet.BasicSpawnCrate == false
		end
		if ChipSet.AdvancedSpawnCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Spawn02", false)
			until ChipSet.AdvancedSpawnCrate == false
		end
		if ChipSet.BasicDesertCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Desert01", false)
			until ChipSet.BasicDesertCrate == false
		end
		if ChipSet.AdvancedDesertCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Desert02", false)
			until ChipSet.AdvancedDesertCrate == false
		end
		if ChipSet.BasicCaveCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Cave01", false)
			until ChipSet.BasicCaveCrate == false
		end
		if ChipSet.AdvancedCaveCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Cave02", false)
			until ChipSet.AdvancedCaveCrate == false
		end
		if ChipSet.BasicBeachCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Beach01", false)
			until ChipSet.BasicBeachCrate == false
		end
		if ChipSet.AdvancedBeachCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Beach02", false)
			until ChipSet.AdvancedBeachCrate == false
		end
		if ChipSet.BasicLavaCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Lava01", false)
			until ChipSet.BasicLavaCrate == false
		end
		if ChipSet.AdvancedLavaCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Lava02", false)
			until ChipSet.AdvancedLavaCrate == false
		end
		if ChipSet.BasicForestCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Forest01", false)
			until ChipSet.BasicForestCrate == false
		end
		if ChipSet.AdvancedForestCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Forest02", false)
			until ChipSet.AdvancedForestCrate == false
		end
		if ChipSet.BasicGraveyardCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Graveyard01", false)
			until ChipSet.BasicGraveyardCrate == false
		end
		if ChipSet.AdvancedGraveyardCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Graveyard02", false)
			until ChipSet.AdvancedGraveyardCrate == false
		end
		if ChipSet.BasicGhostCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Halloween01", false)
			until ChipSet.BasicGhostCrate == false
		end
		if ChipSet.AdvancedGhostCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Halloween02", false)
			until ChipSet.AdvancedGhostCrate == false
		end
		if ChipSet.BasicSwampCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Swamp01", false)
			until ChipSet.BasicSwampCrate == false
		end
		if ChipSet.AdvancedSwampCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Swamp02", false)
			until ChipSet.AdvancedSwampCrate == false
		end
		if ChipSet.BasicToxicCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Toxic01", false)
			until ChipSet.BasicToxicCrate == false
		end
		if ChipSet.AdvancedToxicCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Toxic02", false)
			until ChipSet.AdvancedToxicCrate == false
		end
		if ChipSet.BasicCandyCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Candy01", false)
			until ChipSet.BasicCandyCrate == false
		end
		if ChipSet.AdvancedCandyCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Candy02", false)
			until ChipSet.AdvancedCandyCrate == false
		end
		if ChipSet.BasicPirateCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Pirate01", false)
			until ChipSet.BasicPirateCrate == false
		end
		if ChipSet.AdvancedPirateCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Pirate02", false)
			until ChipSet.AdvancedPirateCrate == false
		end
		if ChipSet.BasicGlacierCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Glacier01", false)
			until ChipSet.BasicGlacierCrate == false
		end
		if ChipSet.AdvancedGlacierCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Glacier02", false)
			until ChipSet.AdvancedGlacierCrate == false
		end
	end,
	Options = {
		BasicSpawnCrate = false,
		AdvancedSpawnCrate = false,
		BasicDesertCrate = false,
		AdvancedDesertCrate = false,
		BasicCaveCrate = false,
		AdvancedCaveCrate = false,
		BasicBeachCrate = false,
		AdvancedBeachCrate = false,
		BasicLavaCrate = false,
		AdvancedLavaCrate = false,
		BasicForestCrate = false,
		AdvancedForestCrate = false,
		BasicGraveyardCrate = false,
		AdvancedGraveyardCrate = false,
		BasicGhostCrate = false,
		AdvancedGhostCrate = false,
		BasicSwampCrate = false,
		AdvancedSwampCrate = false,
		BasicToxicCrate = false,
		AdvancedToxicCrate = false,
		BasicCandyCrate = false,
		AdvancedCandyCrate = false,
		BasicPirateCrate = false,
		AdvancedPirateCrate = false,
		BasicGlacierCrate = false,
		AdvancedGlacierCrate = false
	}
})

local open3 = open3.DataTable({
	Text = "Open Creates 3",
	Callback = function(ChipSet)
		if ChipSet.BasicSpawnCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Spawn01", true)
			until ChipSet.BasicSpawnCrate == false
		end
		if ChipSet.AdvancedSpawnCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Spawn02", true)
			until ChipSet.AdvancedSpawnCrate == false
		end
		if ChipSet.BasicDesertCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Desert01", true)
			until ChipSet.BasicDesertCrate == false
		end
		if ChipSet.AdvancedDesertCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Desert02", true)
			until ChipSet.AdvancedDesertCrate == false
		end
		if ChipSet.BasicCaveCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Cave01", true)
			until ChipSet.BasicCaveCrate == false
		end
		if ChipSet.AdvancedCaveCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Cave02", true)
			until ChipSet.AdvancedCaveCrate == false
		end
		if ChipSet.BasicBeachCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Beach01", true)
			until ChipSet.BasicBeachCrate == false
		end
		if ChipSet.AdvancedBeachCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Beach02", true)
			until ChipSet.AdvancedBeachCrate == false
		end
		if ChipSet.BasicLavaCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Lava01", true)
			until ChipSet.BasicLavaCrate == false
		end
		if ChipSet.AdvancedLavaCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Lava02", true)
			until ChipSet.AdvancedLavaCrate == false
		end
		if ChipSet.BasicForestCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Forest01", true)
			until ChipSet.BasicForestCrate == false
		end
		if ChipSet.AdvancedForestCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Forest02", true)
			until ChipSet.AdvancedForestCrate == false
		end
		if ChipSet.BasicGraveyardCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Graveyard01", true)
			until ChipSet.BasicGraveyardCrate == false
		end
		if ChipSet.AdvancedGraveyardCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Graveyard02", true)
			until ChipSet.AdvancedGraveyardCrate == false
		end
		if ChipSet.BasicGhostCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Halloween01", true)
			until ChipSet.BasicGhostCrate == false
		end
		if ChipSet.AdvancedGhostCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Halloween02", true)
			until ChipSet.AdvancedGhostCrate == false
		end
		if ChipSet.BasicSwampCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Swamp01", true)
			until ChipSet.BasicSwampCrate == false
		end
		if ChipSet.AdvancedSwampCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Swamp02", true)
			until ChipSet.AdvancedSwampCrate == false
		end
		if ChipSet.BasicToxicCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Toxic01", true)
			until ChipSet.BasicToxicCrate == false
		end
		if ChipSet.AdvancedToxicCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Toxic02", true)
			until ChipSet.AdvancedToxicCrate == false
		end
		if ChipSet.BasicCandyCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Candy01", true)
			until ChipSet.BasicCandyCrate == false
		end
		if ChipSet.AdvancedCandyCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Candy02", true)
			until ChipSet.AdvancedCandyCrate == false
		end
		if ChipSet.BasicPirateCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Pirate01", true)
			until ChipSet.BasicPirateCrate == false
		end
		if ChipSet.AdvancedPirateCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Pirate02", true)
			until ChipSet.AdvancedPirateCrate == false
		end
		if ChipSet.BasicGlacierCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Glacier01", true)
			until ChipSet.BasicGlacierCrate == false
		end
		if ChipSet.AdvancedGlacierCrate == true then
			repeat wait()
				game:GetService("ReplicatedStorage").Remotes.BuyCrate:FireServer("Glacier02", true)
			until ChipSet.AdvancedGlacierCrate == false
		end
	end,
	Options = {
		BasicSpawnCrate = false,
		AdvancedSpawnCrate = false,
		BasicDesertCrate = false,
		AdvancedDesertCrate = false,
		BasicCaveCrate = false,
		AdvancedCaveCrate = false,
		BasicBeachCrate = false,
		AdvancedBeachCrate = false,
		BasicLavaCrate = false,
		AdvancedLavaCrate = false,
		BasicForestCrate = false,
		AdvancedForestCrate = false,
		BasicGraveyardCrate = false,
		AdvancedGraveyardCrate = false,
		BasicGhostCrate = false,
		AdvancedGhostCrate = false,
		BasicSwampCrate = false,
		AdvancedSwampCrate = false,
		BasicToxicCrate = false,
		AdvancedToxicCrate = false,
		BasicCandyCrate = false,
		AdvancedCandyCrate = false,
		BasicPirateCrate = false,
		AdvancedPirateCrate = false,
		BasicGlacierCrate = false,
		AdvancedGlacierCrate = false
	}
})

local Spawn = info.Button({
	Text = "Spawn-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Spawn.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Spawn.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Spawn.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Spawn.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Spawn.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Spawn-Boss notifications"
			})
		end
	}
})

local Desert = info.Button({
	Text = "Desert-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Desert.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Desert.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Desert.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Desert.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Desert.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Desert-Boss notifications"
			})
		end
	}
})

local Forest = info.Button({
	Text = "Forest-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Forest.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Forest.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Forest.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Forest.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Forest.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Forest-Boss notifications"
			})
		end
	}
})

local Beach = info.Button({
	Text = "Beach-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Beach.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Beach.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Beach.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Beach.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Beach.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Beach-Boss notifications"
			})
		end
	}
})

local Swamp = info.Button({
	Text = "Swamp-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Swamp.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Swamp.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Swamp.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Swamp.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Swamp.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Swamp-Boss notifications"
			})
		end
	}
})

local Graveyard = info.Button({
	Text = "Graveyard-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Graveyard.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Graveyard.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Graveyard.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Graveyard.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Graveyard.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Graveyard-Boss notifications"
			})
		end
	}
})

local Toxic = info.Button({
	Text = "Toxic-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Toxic.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Toxic.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Toxic.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Toxic.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Toxic.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Toxic-Boss notifications"
			})
		end
	}
})

local Halloween = info.Button({
	Text = "Halloween-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Halloween.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Halloween.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Halloween.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Halloween.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Halloween.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Halloween-Boss notifications"
			})
		end
	}
})

local Lava = info.Button({
	Text = "Lava-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Lava.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Lava.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Lava.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Lava.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Lava.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Lava-Boss notifications"
			})
		end
	}
})

local Cave = info.Button({
	Text = "Cave-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Cave.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Cave.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Cave.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Cave.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Cave.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Cave-Boss notifications"
			})
		end
	}
})

local VIP = info.Button({
	Text = "VIP-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.VIP.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.VIP.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.VIP.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.VIP.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.VIP.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable VIP-Boss notifications"
			})
		end
	}
})

local Candy = info.Button({
	Text = "Candy-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Candy.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Candy.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Candy.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Candy.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Candy.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Candy-Boss notifications"
			})
		end
	}
})

local Pirate = info.Button({
	Text = "Pirate-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Pirate.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Pirate.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Pirate.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Pirate.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Pirate.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Pirate-Boss notifications"
			})
		end
	}
})

local Glacier = info.Button({
	Text = "Glacier-Boss Status",
	Callback = function()
		local BossPath = game:GetService("Workspace").SpawnGroups.Glacier.BossSpawns.BossSpawn
		BossPath.ChildAdded:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Glacier.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Glacier.SpawnConfigs.Boss["ID"].Value).." Has Spawned",
					Duration = 2
				})
			end
		end)
		BossPath.ChildRemoved:Connect(function(child)
			if child.Name == tostring(game:GetService("Workspace").SpawnGroups.Glacier.SpawnConfigs.Boss["ID"].Value) then
				StarterGui:SetCore("SendNotification", {
					Title = "LunaHub",
					Text = tostring(game:GetService("Workspace").SpawnGroups.Glacier.SpawnConfigs.Boss["ID"].Value).." Has Died",
					Duration = 2
				})
			end
		end)
	end,
	Menu = {
		Information = function(self)
			newUI.Banner({
				Text = "Enable Glacier-Boss notifications"
			})
		end
	}
})