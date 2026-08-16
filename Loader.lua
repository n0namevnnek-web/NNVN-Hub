if not game:IsLoaded() then
    game.Loaded:Wait()
end

if identifyexecutor then
    local execName = tostring(identifyexecutor()):lower()
    if execName:find("solara") or execName:find("xeno") then
        game:GetService("Players").LocalPlayer:Kick("🔴 EXECUTOR NOT SUPPORTED[PLEASE DON'T GET MAD THIS IS SOLARA/XENO'S FAULT]")
        return
    end
end

local gameUrls = {
    [74102906764176] = "https://raw.githubusercontent.com/n0namevnnek-web/Greedy-Growers/refs/heads/main/Key.lua",
    [98502499119821] = "https://raw.githubusercontent.com/n0namevnnek-web/Heavyweight-Fishing/refs/heads/main/Key.lua",
    [140302982046391] = "https://raw.githubusercontent.com/n0namevnnek-web/Be-The-Final-Boss-/refs/heads/main/Key.lua",
}

local url = gameUrls[game.PlaceId]
if url then
    task.wait(math.random())
    loadstring(game:HttpGet(url))()
end
