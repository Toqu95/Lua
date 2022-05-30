local function statchange()
    local aux = loadstring(game:HttpGetAsync("https://raw.githubusercontent.com/Upbolt/Hydroxide/revision/ohaux.lua"))()

    local scriptPath = workspace.Toquzz["Main.Control.Script"]
    local closureName = "Unnamed function"
    local upvalueIndex = 8
    local closureConstants = {
        [1] = "script",
        [2] = workspace.Toquzz["Main.Control.Script"],
        [3] = "InGym",
        [4] = "Value",
        [5] = "Neutral",
        [6] = 999999
    }

    local closure = aux.searchClosure(scriptPath, closureName, upvalueIndex, closureConstants)

    debug.getupvalue(closure, upvalueIndex)["2pointer"] = 9999
    debug.getupvalue(closure, upvalueIndex)["postscorer"] = 9999
    debug.getupvalue(closure, upvalueIndex)["steal"] = 9999
    debug.getupvalue(closure, upvalueIndex)["dunk"] = 9999
    debug.getupvalue(closure, upvalueIndex)["freethrow"] = 9999
    debug.getupvalue(closure, upvalueIndex)["shotcontest"] = 9999
    debug.getupvalue(closure, upvalueIndex)["strenght"] = 9999
    debug.getupvalue(closure, upvalueIndex)["3pointer"] = 9999
    debug.getupvalue(closure, upvalueIndex)["layup"] = 9999
    debug.getupvalue(closure, upvalueIndex)["defense"] = 9999
    debug.getupvalue(closure, upvalueIndex)["ballspeed"] = 9999
    debug.getupvalue(closure, upvalueIndex)["speed"] = 9999
    debug.getupvalue(closure, upvalueIndex)["handles"] = 9999
    debug.getupvalue(closure, upvalueIndex)["movingshot"] = 9999
    debug.getupvalue(closure, upvalueIndex)["passing"] = 9999
    debug.getupvalue(closure, upvalueIndex)["jump"] = 100
end

statchange()