local Lib = {}


local MainBackGroundColor = Color3.fromRGB(54, 54, 54)
local TopBackGroundColor = Color3.fromRGB(41, 43, 43)

local ButtonTextColor = Color3.fromRGB(255, 255, 255)
local ButtonBackGroundColor = Color3.fromRGB(200, 65, 65)

local TitleColor = Color3.fromRGB(255, 83, 83)

local TabFrameColor = Color3.fromRGB(65, 65, 65)
local TabTitleColor = Color3.fromRGB(255, 66, 69)
local TabTitleTransparency = .5
local TabTitleTextColor = Color3.fromRGB(255, 255, 255)

local ToggleColorON = Color3.fromRGB(255, 192, 64)
local ToggleColorOFF = Color3.fromRGB(255, 106, 108)
local ToggleTitleColor = Color3.fromRGB(255, 106, 108)

function Lib:makeWindow(title)
	local UserInputService = game:GetService("UserInputService")
	
	local PureGui = Instance.new("ScreenGui")
	local Top = Instance.new("Frame")
	local Main = Instance.new("Frame")
	local UIGridLayout = Instance.new("UIGridLayout")
	local UIPadding = Instance.new("UIPadding")
	local UICorner = Instance.new("UICorner")
	local UICorner2 = Instance.new("UICorner")
	local Title = Instance.new("TextLabel")
	
	PureGui.Name = "PureGui"
	PureGui.Parent = game:GetService("CoreGui")
	PureGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Top.Name = "Top"
	Top.Parent = PureGui
	Top.BackgroundColor3 = TopBackGroundColor
	Top.BorderSizePixel = 0
	Top.Position = UDim2.new(0.5, -192.5, 0.5, -12)
	Top.Size = UDim2.new(0, 385, 0, 24)
	
	Title.Name = "Title"
	Title.Parent = Top
	Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Title.BackgroundTransparency = 1.000
	Title.BorderSizePixel = 0
	Title.Position = UDim2.new(0, 7, 0, -4)
	Title.Size = UDim2.new(0, 94, 0, 29)
	Title.Font = Enum.Font.Cartoon
	Title.TextColor3 = TitleColor
	Title.TextSize = 20.000
	Title.TextWrapped = true
	Title.TextXAlignment = Enum.TextXAlignment.Left
	Title.Text = title

	local dragging
	local dragInput
	local dragStart
	local startPos

    local gui = game:GetService("CoreGui"):FindFirstChild("PureGui")["Top"]
	
	local function update(input)
		local delta = input.Position - dragStart
		gui:TweenPosition(UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.04, true) -- This is what I changed
	end
	
	gui.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = input.Position
			startPos = gui.Position

			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					dragging = false
				end
			end)
		end
	end)

	gui.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end
	end)

	UserInputService.InputChanged:Connect(function(input)
		if input == dragInput and dragging then
			update(input)
		end
	end)
	
	Main.Name = "Main"
	Main.Parent = Top
	Main.BackgroundColor3 = MainBackGroundColor
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0.5, -220, 0.5, -16)
	Main.Size = UDim2.new(0, 385, 0, 210)

	UIGridLayout.Parent = Main
	UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIGridLayout.CellSize = UDim2.new(0, 90, 0, 24)

	UIPadding.Parent = Main
	UIPadding.PaddingLeft = UDim.new(0, 5)
	UIPadding.PaddingTop = UDim.new(0, 4)
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Main
	
	UICorner2.CornerRadius = UDim.new(0, 4)
	UICorner2.Parent = Top
	
	return game.Players.LocalPlayer:WaitForChild("PlayerGui"):FindFirstChild("PureGui")["Top"]["Main"]
end

function Lib:addTab(window, name)
	local Tab = Instance.new("TextLabel")
	local TabFrame = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local UICorner = Instance.new("UICorner")
	local UICorner2 = Instance.new("UICorner")

	Tab.Name = name
	Tab.Parent = window
	Tab.BackgroundColor3 = TabTitleColor
	Tab.Size = UDim2.new(0, 200, 0, 50)
	Tab.Font = Enum.Font.SourceSans
	Tab.TextColor3 = TabTitleTextColor
	Tab.TextSize = 16.000
	Tab.Text = name
	Tab.BackgroundTransparency = TabTitleTransparency

	TabFrame.Name = name
	TabFrame.Parent = Tab
	TabFrame.BackgroundColor3 = TabFrameColor
	TabFrame.BorderSizePixel = 0
	TabFrame.Position = UDim2.new(0, 0, 1.16666663, 0)
	TabFrame.Size = UDim2.new(0, 89, 0, 172)

	UIListLayout.Parent = TabFrame
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 4)

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Tab

	UICorner2.CornerRadius = UDim.new(0, 4)
	UICorner2.Parent = TabFrame

	return window[name][name]
end

function Lib:addButton(tab, name, callback)
	local Button = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")

	Button.Name = name
	Button.Parent = tab
	Button.BackgroundColor3 = ButtonBackGroundColor
	Button.Size = UDim2.new(0, 89, 0, 19)
	Button.Font = Enum.Font.Cartoon
	Button.TextColor3 = ButtonTextColor
	Button.TextSize = 14.000
	Button.Text = name
	Button.BorderSizePixel = 0

	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Button

	Button.MouseButton1Click:Connect(function()
		pcall(callback)
	end)
end

function Lib:addToggle(tab, name, callback)
	local Toggle = Instance.new("Frame")
	local ButtonText = Instance.new("TextLabel")
	local ToggleButton = Instance.new("TextButton")
	local UICorner = Instance.new("UICorner")
	local UICorner2 = Instance.new("UICorner")
	local UICorner3 = Instance.new("UICorner")

	Toggle.Name = "Toggle"
	Toggle.Parent = tab
	Toggle.BackgroundColor3 = TopBackGroundColor
	Toggle.BackgroundTransparency = 1
	Toggle.BorderSizePixel = 0
	Toggle.Position = UDim2.new(0, 0, 0.244186044, 0)
	Toggle.Size = UDim2.new(0, 89, 0, 19)

	ToggleButton.Name = "ToggleButton"
	ToggleButton.Parent = ButtonText
	ToggleButton.BackgroundColor3 = ToggleColorOFF
	ToggleButton.Position = UDim2.new(0.8, 0, 0, 0)
	ToggleButton.Size = UDim2.new(0, 19, 0, 19)
	ToggleButton.Font = Enum.Font.Cartoon
	ToggleButton.Text = ""
	ToggleButton.TextColor3 = ButtonTextColor
	ToggleButton.TextSize = 14.000
	ToggleButton.BorderSizePixel = 0

	ButtonText.Name = "ButtonText"
	ButtonText.Parent = Toggle
	ButtonText.BackgroundColor3 = ButtonBackGroundColor
	ButtonText.Position = UDim2.new(0, 0, 0.1, 0)
	ButtonText.Size = UDim2.new(0, 89, 0, 19)
	ButtonText.Font = Enum.Font.Cartoon
	ButtonText.TextColor3 = ButtonTextColor
	ButtonText.TextSize = 14.000
	ButtonText.BorderSizePixel = 0
	ButtonText.Text = name
	
	UICorner.CornerRadius = UDim.new(0, 4)
	UICorner.Parent = Toggle
	
	UICorner2.CornerRadius = UDim.new(0, 4)
	UICorner2.Parent = ButtonText
	
	UICorner3.CornerRadius = UDim.new(0, 6)
	UICorner3.Parent = ToggleButton
	
	ToggleButton.MouseButton1Click:Connect(function()
		if ToggleButton.BackgroundColor3 == ToggleColorOFF then
			ToggleButton.BackgroundColor3 = ToggleColorON
			repeat
				wait()
				pcall(callback)
			until ToggleButton.BackgroundColor3 == ToggleColorOFF
		else
			ToggleButton.BackgroundColor3 = ToggleColorOFF
		end
	end)
end

local _X

function Lib:updateSizeWindow(window)
	local tabCount = 0

	for _,v in pairs(window:GetChildren()) do
		if v.ClassName == "TextLabel" then
			tabCount += 1
		end
	end

	local x = 5
	local y = 210

	if tabCount > 0 then
		for i = 1, tabCount do
			x += 95
		end
	end

	window.Size = UDim2.new(0, x, 0, y)
	window.Position = UDim2.new(0, 0, 0, 20)
	window.Parent.Size = UDim2.new(0, x, 0, 24)
	
	_X = x
end

function Lib:updateSizeTab(tab)
	local elementCount = 0

	for _,v in pairs(tab:GetChildren()) do
		if v.ClassName == "Frame" or v.ClassName == "TextButton" then
			elementCount += 1
		end
	end
	local Y = 19
	local newY = Y*elementCount + 6
	tab.Size = UDim2.new(0, 89, 0, newY)
end

local UI = Lib:makeWindow("PureUI")

local tab1 = Lib:addTab(UI, "Locals")

Lib:addToggle(tab1, "Ragdoll", function()
    if game:GetService("Players").LocalPlayer.Character.Values.Ragdoll.Value == false then
        game:GetService("Players").LocalPlayer.Character.Values.Ragdoll.Value = true
        return
    else
        game:GetService("Players").LocalPlayer.Character.Values.Ragdoll.Value = false
        return
    end
end)

Lib:updateSizeWindow(UI)