function BindFuncToKey(key, func)
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(k)
        if k.KeyCode == key then
            func()
        end
    end)
end

BindFuncToKey(Enum.KeyCode.R, function()
    game.ReplicatedStorage.Ball.StartShooting:FireServer()
    wait(0.5)
    game.ReplicatedStorage.Ball.EndShooting:InvokeServer(true,"Perfect")
end)