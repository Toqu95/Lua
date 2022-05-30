game:GetService("Workspace")["__THINGS"].Orbs.ChildAdded:Connect(function(child)
    child.CFrame = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame
end)