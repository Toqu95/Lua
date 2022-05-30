function setPrecentage(precentage)
    local _module = require(game:GetService("ReplicatedStorage").Shootball.Percentage)

    if _module then
        hookfunction(_module.CalculatePercentage, function(...)
            return precentage
        end)
    end
end

function setHeight(height)
    local _module = require(game:GetService("ReplicatedStorage").Shootball.Height)

    hookfunction(_module.CalculateHeight, function(...)
        return height
    end)
end