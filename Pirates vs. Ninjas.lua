local Material = loadstring(game:HttpGet("https://raw.githubusercontent.com/Kinlei/MaterialLua/master/Module.lua"))()

local newUI = Material.Load({
	Title = "Pirates vs. Ninjas [FPS]",
	Style = 3,
	SizeX = 400,
	SizeY = 350,
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

local head = main.Button({
    Text = "Extend Head Hitbox",
    Callback = function()
        repeat
            wait(1)
            while wait() do
                for i,v in next, game:GetService("Players"):GetChildren() do
                    if v.Name ~= game:GetService("Players").LocalPlayer.Name then
                        if v.Character:WaitForChild("Head") ~= nil then
                            v.Character.Head.Size = Vector3.new(4.19784, 4.2024, 4.1979)
                            v.Character.Head.CanCollide = false
                            v.Character.Head.Transparency = 0
                        end
                        if v.Character:WaitForChild("HumanoidRootPart") ~= nil then
                            v.Character.HumanoidRootPart.Size = Vector3.new(4.19784, 4.2024, 4.1979)
                            v.Character.HumanoidRootPart.CanCollide = false
                            v.Character.HumanoidRootPart.Transparency = 0
                        end
                    end
                end
            end
        until false
    end
})