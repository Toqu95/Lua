local Framework = {}

function Framework.BindFuncToKey(key, func)
    local UIS = game:GetService("UserInputService")
    UIS.InputBegan:Connect(function(k)
        if k.KeyCode == key then
            func()
        end
    end)
end

function Framework.SendNotify(_Title, _Message, _Icon, _Duration)
    local StarterGui = game:GetService("StarterGui")
    StarterGui:SetCore("SendNotification", {
        Title = _Title,
        Text = _Message,
        Icon = _Icon,
        Duration = _Duration
    })
end

if game.PlaceId == 0 then
    pcall(function()
        local gmppath = require(game:GetService("ReplicatedStorage").Framework.Modules.Client["5 | Gamepasses"])
        gmppath.Owns = function() return true end
        Framework.SendNotify("PetSimX", "Gamepasses Unlocked!", nil, 3)
    end)
end