--[[
        • ▌ ▄ ·.              ▐ ▄ ▄▄▌  ▪   ▄▄ •  ▄ .▄▄▄▄▄▄
        ·██ ▐███▪▪     ▪     •█▌▐███•  ██ ▐█ ▀ ▪██▪▐█•██  
        ▐█ ▌▐▌▐█· ▄█▀▄  ▄█▀▄ ▐█▐▐▌██▪  ▐█·▄█ ▀█▄██▀▐█ ▐█.▪
        ██ ██▌▐█▌▐█▌.▐▌▐█▌.▐▌██▐█▌▐█▌▐▌▐█▌▐█▄▪▐███▌▐▀ ▐█▌·
        ▀▀  █▪▀▀▀ ▀█▄▀▪ ▀█▄▀▪▀▀ █▪.▀▀▀ ▀▀▀·▀▀▀▀ ▀▀▀ · ▀▀▀ 
            
                        Protected and Safe
]]--

MoonClient = {}


-- // Server Protection // --

MoonClient.AntiStopper = false -- After enabling this, you can use the antistop function

MoonClient.Heartbeat = false -- If true, the server will send a heartbeat to the client. [Needs to be true in the serverconfig too]

MoonClient.DetectedRandomEvents = true -- Will detected random events and prevent them like lynx events

MoonClient.SecureSelf = true -- Will add more security to prevent bypassing the anticheat

MoonClient.Takescreenshot = true -- Will take a screenshot on key press

MoonClient.AntiWeaponCheat = true -- Will detect weapon cheating [NEW] [ESX]

-- // Client Protection // --
MoonClient.AntiExploit = true -- After enabling this, you can use the antiexploit function will detect if you are using exploits / damage modifiers etc.
MoonClient.AntiModMenuWeapon = false -- After enabling this, you can use the antimodmenuweapon function will detect if you are using mod menu weapons. [ATTENTION][ONLY ESX]

MoonClient.AntiadvancedModmenu = false -- After enabling this, you can use the antiavancedmodmenu this function will search the client for names etc

MoonClient.EulenANTISPAWNCAR = true -- After enabling this, you can use the eulenantispawncar function will detect if you are using spawn cars.

MoonClient.MaxKIlls = true -- ESX ONLYS
MoonClient.MaxKillsdef = 3 -- Max Kills
MoonClient.MaxKillsTimer = 1000*60 -- Given Time

-- // Player Settings // --

MoonClient.AntiFreecam = false -- After enabling this, you can use the antifreecam function will detect if you are using freecam.

MoonClient.AntiNoclip = true -- After enabling this, you can use the antinoclip function will detect if you are using noclip.

MoonClient.AntiGodmode = false  -- After enabling this, you can use the antigodmode function will detect if you are using godmode.
MoonClient.GodmodeTYPE1 = false 
MoonClient.GodmodeTYPE2 = true
MoonClient.GodmodeTYPE3 = true

MoonClient.AntiMaxArmor = true -- After enabling this, you can use the antimaxarmor function will detect if you are using max armor.
MoonClient.AntiMaxArmorlvl = 200 -- Armor health

MoonClient.AntiRape = true -- After enabling this, you can use the antirape function will detect if you are using

MoonClient.AntiSpectate = true -- After enabling this, you can use the antispectate function will detect if you are using spectate.

MoonClient.AntiVehicleModifier = true -- After enabling this, you can use the antivehiclemodifier function will detect if you are using vehicle modifier.

-- // Secure Functions // --

MoonClient.AntiVehicleGrab = true -- After enabling this, you can use the antivehiclegrab function will detect if you are using vehicle grab. [Works against SKRIPT.GG]

MoonClient.AntiASI = true -- After enabling this, you can use the antiasi function will detect if you are using ASI

MoonClient.AntiInject = true -- After enabling this, you can use the antiinject function will detect if you are using Injection methods

-- // Artificiall Intelligence // --

MoonClient.MoonAI = true -- After enabling this, you can use the moonai function will detect if you are using menus on your client side

MoonClient.BlacklistedAIWORDS = {
	"fallout", "godmode", "god mode", "modmenu", "esx money", "give armor", "troll", "trigger", "triggerbot", "rage bot", "ragebot", "rapidfire", "fuck server", "freecam", "superjump", "noclip", "hack",
    "lynx", "absolute", "ckgangisontop", "lumia1", "ISMMENU", "HydroMenu", "TAJNEMENUMenu", "rootMenu", "Outcasts666", "WaveCheat", "NacroxMenu", "MarketMenu", "topMenu", "FlexSkazaMenu", "SidMenu", "Crown", "Lynx8", "LynxEvo", "Maestro",
    "Tiago", "Brutan", "redEngine", "Unex", "Eulen", "HamMafia", "HamHaxia", "Dopamine", "Dopameme", "redMENU", "falcon", "Desudo", "Onion", "explode", "Ciao", "Anticheat", "Tapatio", "Particle", "Malossi", "Nisi", "RedStonia",
    "Chocohax", "Inyection", "Inyected", "Dumper", "LUA Executor", "Executor", "Skid", "HoaX", "inSec", "Reaper", "Event Blocker", "Cheats", "Cheat", "Destroyer", "Spectate", "Wallhack", "Exploit", "triggers", "crosshair", "Explosive",
    "Alokas66", "Hacfivemwall System!", "Online Players", "Panic Button", "Destroy Menu", "Self Menu", "Server IP", "Teleport To", "Give Single Weapon", "Airstrike Player", "Taze Player", "Toga", "Magneto"
}

