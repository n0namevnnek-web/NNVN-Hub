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
    [17600423422] = "https://raw.githubusercontent.com/n0namevnnek-web/Flee-10-Player/refs/heads/main/Key.lua",
    [99521272836282] = "https://raw.githubusercontent.com/n0namevnnek-web/Final-Swarm/refs/heads/main/Key.lua",
    [132508978828159] = "https://raw.githubusercontent.com/n0namevnnek-web/Roll-to-Survive-/refs/heads/main/Key.lua",
    [74218191398494] = "https://raw.githubusercontent.com/n0namevnnek-web/-1-Double-Jump-Bike-Escape-/refs/heads/main/Key.lua",
    [127634932179327] = "https://raw.githubusercontent.com/n0namevnnek-web/Kick-Ball-to-Space-/refs/heads/main/Key.lua",
    [80111254680893] = "https://raw.githubusercontent.com/n0namevnnek-web/Zombies-/refs/heads/main/Key.lua",
    [75654987823652] = "https://raw.githubusercontent.com/n0namevnnek-web/-1-Speed-Boat-Tsunami/refs/heads/main/Key.lua",
    [90803345996188] = "https://raw.githubusercontent.com/n0namevnnek-web/Speed-vs-Giant/refs/heads/main/Key.lua",
    [102990893659741] = "https://raw.githubusercontent.com/n0namevnnek-web/Brainblast-a-Lucky-Block-/refs/heads/main/Key.lua",
    [134660056748270] = "https://raw.githubusercontent.com/n0namevnnek-web/1-Speed-Per-Click/refs/heads/main/Key.lua",
    [96033388567901] = "https://raw.githubusercontent.com/n0namevnnek-web/Loot-Evo/refs/heads/main/Key.lua",
    [75568173037446] = "https://raw.githubusercontent.com/n0namevnnek-web/Get-Fat-to-Break-Tape/refs/heads/main/Key.lua",
    [10449761463] = "https://raw.githubusercontent.com/n0namevnnek-web/The-Strongest-BattleGrounds/refs/heads/main/Key.lua",
    [18687417158] = "https://raw.githubusercontent.com/n0namevnnek-web/Forsaken/refs/heads/main/Key.lua",
    [137233438285284] = "https://raw.githubusercontent.com/n0namevnnek-web/Chicken-Farm-/refs/heads/main/Key.lua",
    [136107936984073] = "https://raw.githubusercontent.com/n0namevnnek-web/-1-Muscle-to-Push-Boulder/refs/heads/main/Key.lua",
    [1962086868] = "https://raw.githubusercontent.com/n0namevnnek-web/Tower-of-Hell/refs/heads/main/Key.lua",
    [74716719697996] = "https://raw.githubusercontent.com/n0namevnnek-web/Survive-Verity-In-Arena-51/refs/heads/main/Key.lua",
    [133294838637122] = "https://raw.githubusercontent.com/n0namevnnek-web/Jump-to-Steal-Soccer-Players/refs/heads/main/Key.lua",
    [8737899170] = "https://raw.githubusercontent.com/n0namevnnek-web/Pet-Simulator-99/refs/heads/main/Key.lua",
    [96401370703274] = "https://raw.githubusercontent.com/n0namevnnek-web/Climb-and-Drop-a-Lucky-Block-/refs/heads/main/Key.lua",
    [132016691802922] = "https://raw.githubusercontent.com/n0namevnnek-web/Build-a-Base-and-Steal/refs/heads/main/Key.lua",
    [112838150455902] = "https://raw.githubusercontent.com/n0namevnnek-web/Encounter-Smash-Battles/refs/heads/main/Key.lua",
    [119609933650338] = "https://raw.githubusercontent.com/n0namevnnek-web/Dog-Race/refs/heads/main/Key.lua",
    [1537690962] = "https://raw.githubusercontent.com/n0namevnnek-web/Bee-Swarm-Simulator/refs/heads/main/Key.lua",
    [100400297022629] = "https://raw.githubusercontent.com/n0namevnnek-web/Duels-Warriors/refs/heads/main/Key.lua",
    [112641748896693] = "https://raw.githubusercontent.com/n0namevnnek-web/Missiles-vs-Cities/refs/heads/main/Key.lua",
    [116223724643557] = "https://raw.githubusercontent.com/n0namevnnek-web/-1-Magic-Evolution/refs/heads/main/Key.lua",
    [89469502395769] = "https://raw.githubusercontent.com/n0namevnnek-web/Kick-A-Lucky-Block/refs/heads/main/key.lua",
    [83622406313819] = "https://raw.githubusercontent.com/n0namevnnek-web/Loot-Up/refs/heads/main/Key.lua",
    [119031147890918] = "https://raw.githubusercontent.com/n0namevnnek-web/Dino-Hunters/refs/heads/main/Key.lua",
    [78177131121429] = "https://raw.githubusercontent.com/n0namevnnek-web/Drill-Blocks-For-Brainrots/refs/heads/main/Key.lua",
    [99702578544768] = "https://raw.githubusercontent.com/n0namevnnek-web/Be-A-Fish-Bait/refs/heads/main/Key.lua",
    [115681808123944] = "https://raw.githubusercontent.com/n0namevnnek-web/Throw-a-Coin-/refs/heads/main/Key.lua",
    [114204398207377] = "https://raw.githubusercontent.com/n0namevnnek-web/Survive-Zombie-Arena/refs/heads/main/Key.lua",
    [138381251771774] = "https://raw.githubusercontent.com/n0namevnnek-web/Drain-the-Lake/refs/heads/main/Key.lua",
    [118433033586507] = "https://raw.githubusercontent.com/n0namevnnek-web/Simple-Spell/refs/heads/main/Key.lua",
    [13864661000] = "https://raw.githubusercontent.com/n0namevnnek-web/Break-In-2/refs/heads/main/Key.lua",
    [3678761576] = "https://raw.githubusercontent.com/n0namevnnek-web/ENTRENCHED-WW1/refs/heads/main/Key.lua",
    [142823291] = "https://raw.githubusercontent.com/n0namevnnek-web/Murder-Mystery-2/refs/heads/main/Key.lua",
    [16039690331] = "https://raw.githubusercontent.com/n0namevnnek-web/Secret-Killer/refs/heads/main/Key.lua",
    [116495829188952] = "https://raw.githubusercontent.com/n0namevnnek-web/Dead-rails-Heatwave-/refs/heads/main/Key.lua",
    [10260193230] = "https://raw.githubusercontent.com/n0namevnnek-web/Meme-sea/refs/heads/main/Key.lua",
    [7711635737] = "https://raw.githubusercontent.com/n0namevnnek-web/Emergency-Hamburg/refs/heads/main/Key.lua",
    [12998806177] = "https://raw.githubusercontent.com/n0namevnnek-web/Kill-Streak/refs/heads/main/Key.lua",
    [114234929420007] = "https://raw.githubusercontent.com/n0namevnnek-web/Blox-Strike-/refs/heads/main/Key.lua"
}

local url = gameUrls[game.PlaceId]
if url then
    task.wait(math.random())
    loadstring(game:HttpGet(url))()
end
