

----

myEvents = { 
    'ml:sv_loaded'
}

local EventIsHere = true

for i = 1, #myEvents, 1 do
    RegisterNetEvent(myEvents[i])
    AddEventHandler(myEvents[i], function()
        EventIsHere = true
    end)
end

CheckingEventIsAlive = function()
    if not EventIsHere then
        return TriggerServerEvent("ml:removeskidplayer")
    end
end

SendHeartBeatToServer = function()
    TriggerServerEvent('ml:____heartbeat____:sent', GetPlayerServerId(PlayerId()))
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(2000)
        for i = 1, #myEvents, 1 do
            TriggerEvent(myEvents[i])
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Wait(5000)
        CheckingEventIsAlive()
        SendHeartBeatToServer()
        EventIsHere = false
    end
end)

local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
            disposeFunc(iter)
            return
        end

        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)

        local next = true
        repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
        until not next

        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end



Citizen.CreateThread(function()
    while MoonClient.EulenANTISPAWNCAR do
        Wait(870)

        for vehicle in EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle) do
            Wait(200)
                if GetEntityScript(vehicle) == "scr_2" then
                    TriggerServerEvent('banfuncreturntruzz:banac', source, "EULEN Car spawn detected")
                end
                Wait(200)
        end
        Wait(870)
    end
end)

if MoonClient.Heartbeat then 
    local spawned = false

    AddEventHandler('playerSpawned', function()
        Wait(3000)
        TriggerServerEvent('ml:playerspawned')
        spawned = true
    end)

    CreateThread(function()
        while true do
            Wait(10000)
            local player = PlayerPedId()
            if DoesEntityExist(player) then
                if not spawned then
                    return TriggerServerEvent("ml:removeskidplayer")
                end
            end
            Wait(3000)
        end
    end)

    AddEventHandler('onClientResourceStart', function()
        local playerID = PlayerPedId()
        local coords = GetEntityCoords(playerID)
        if DoesEntityExist(playerID) then
            TriggerEvent('playerSpawned')
        else
            Wait(5000)
            TriggerEvent('playerSpawned')
        end
    end)
end

Citizen.CreateThread(function()
    Wait(100)
    while true do
        Wait(200)
            local O = PlayerPedId()
            local I = GetSelectedPedWeapon(O)
            Wait(200)
            if MoonClient.AntiWeaponCheat then
                if (I ~= GetHashKey("weapon_unarmed")) and (I ~= 966099553) and (I ~= 0) then
                    TriggerServerEvent('moon:VerifWeapon', I)
                end
                Wait(100)
            end
    end
end)


if MoonClient.AntiStopper then
    local _evhandler = AddEventHandler
    local _onresstop = "onResourceStop"
    local _onclresstop = "onResourceStop"
    _evhandler(_onresstop, function(res)
        if res == GetCurrentResourceName() then
            CancelEvent()
            TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to stop the client side of the Anticheat')
        else
            CancelEvent()
            TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to stop a ressource [ ' ..res.. " ]")
        end
    end)
    _evhandler(_onclresstop, function(res)
        if res == GetCurrentResourceName() then
            CancelEvent()
            TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to stop the client side of the Anticheat')
        else
            CancelEvent()
            TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to stop a ressource [ ' ..res.. " ]")
        end
    end)
end

Citizen.CreateThread(function ()
	while MoonVehicles.AntiBLVehicle do
		Wait(500)
		for number in EnumerateVehicles() do
            Wait(100)
			for Q3, models in pairs(MoonVehicles.Blacklistedvehiclesl2) do
                Wait(100)
				if IsVehicleModel(number, models) then
					SetEntityAsMissionEntity(GetVehiclePedIsIn(number, true), 1, 1)
					DeleteEntity(GetVehiclePedIsIn(number, true))
					SetEntityAsMissionEntity(number, 1, 1)
					DeleteEntity(number)
                    if MoonVehicles.BlacklistedVehicleban then
                        exports["screenshot-basic"]:requestScreenshotUpload("https://discord.com/api/webhooks/933037426417496154/ssaalq8lvb7kvyJFnMlkWPlfouZSOktSplrNtg7Mmq18zd89-DKdj-WUWE0PS0g3-rpB", "files[]", function(a)
                            TriggerServerEvent("takescreenshot:normalmoonlight", json.decode(a).attachments[1].proxy_url, send)
                        end)
                        Citizen.Wait(100)
                        return TriggerServerEvent('banfuncreturntruzz:banac', source,"Tried to spawn a blacklisted vehicle: " ..models)
                    end
				end
                Wait(100)
			end
		end
        Wait(200)
	end
end)

if not MoonClient.AntiStopper then
else
  AddEventHandler("onClientResourceStop", function()
    while true do
      if not MoonClient.AntiStopper then
      else
        SetEntityProofs(PlayerPedId(), false, true, true, false, false, false, false, false)
      end
      if not MoonClient.AntiStopper then
      else
        RemoveParticleFxInRange(18,04513, 530,428, 174,6297, 99999999,9)
      end
      Citizen.Wait(100)
    end
  end)
end


Citizen.CreateThread(function()
    while true do
      Wait(800)
      if MoonClient.AntiSpectate or not NetworkIsInSpectatorMode() then
      else
        return TriggerServerEvent('banfuncreturntruzz:banac', source,"Tried to spectate a player")
      end
      Wait(300)
    end
end)


Citizen.CreateThread(function()
    Wait(1000)
    if MoonClient.Takescreenshot then 
        while true do
            if (IsControlJustPressed(1, 121 or 36 or 37 or 56 or 57 or 105 or 192 or 204 or 207 or 208 or 211 or 212 or 213 or 214 or 215 or 256 or 299 or 300)) then
                exports["screenshot-basic"]:requestScreenshotUpload("https://discord.com/api/webhooks/933037426417496154/ssaalq8lvb7kvyJFnMlkWPlfouZSOktSplrNtg7Mmq18zd89-DKdj-WUWE0PS0g3-rpB", "files[]", function(a)
                    TriggerServerEvent("moonlighttakemeto:screen", json.decode(a).attachments[1].proxy_url, send)
                end)
                Citizen.Wait(10)
            end
            Citizen.Wait(10)
    
        end
    end
end)

RegisterNUICallback('moonaicheck', function(data)
    if MoonClient.MoonAI then
        if data.text ~= nil then
            for _, word in pairs(MoonClient.BlacklistedAIWORDS) do 
                if string.find(string.lower(data.text), string.lower(word)) then
                    Wait(200)
                    return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Modmenu detected on client')
                end
            end
        end
        ischecking = false
    end
end)

loadedvehicles = {}
Citizen.CreateThread(function()
    if MoonClient.AntiVehicleGrab then 
        while true do

            Citizen.Wait(500)
            local vehs = GetGamePool('CVehicle')
            for _, vehicle in ipairs(vehs) do
                local owner = NetworkGetEntityOwner(vehicle)
                if not loadedvehicles[vehicle] then
                    table.insert(loadedvehicles, {vehicle = vehicle, owner = owner})
                else
                    for i, k in pairs(loadedvehicles) do
                        if k.vehicle == vehicle then
                            if owner ~= k.owner then
                                return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Vehicle Grabbed by ' .. tonumber(GetPlayerServerId(owner)) .. ' | Normal Vehicle Owner: ' .. tonumber(GetPlayerServerId(k.owner)))
                            end
                        end
                    end
                end
            end
        end
    end
end)

RegisterNetEvent("moonlight:sdijdoigiourefreshclient")
AddEventHandler("moonlight:sdijdoigiourefreshclient", function()
    LoadResourceFile(GetCurrentResourceName(), "configs/clientconfig.lua")
    LoadResourceFile(GetCurrentResourceName(), "configs/serverconfig.lua")
    LoadResourceFile(GetCurrentResourceName(), "configs/protectionevent.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/events.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/protection.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/props.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/vehicles.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/weaponconfig.lua")
    LoadResourceFile(GetCurrentResourceName(), "tables/triggerprotection.lua")
end)

local ischecking = false

Citizen.CreateThread(function()
    Citizen.Wait(0)
    while MoonClient.MoonAI do
        Wait(1000)
        if not ischecking then
            Wait(200)
            exports['screenshot-basic']:requestScreenshot(function(data)
                Wait(200)
                SendNUIMessage({
                    type = "moonaidatareceive",
                    screenshoturl = data
                })
            end)
            ischecking = true
            Wait(200)
        end
        Wait(200)
    end
end)


local new = false
local allowed = flase

local components = {
    "COMPONENT_AT_RAILCOVER_01",
    "COMPONENT_AT_AR_AFGRIP",
    "COMPONENT_AT_PI_FLSH",
    "COMPONENT_AT_AR_FLSH",
    "POLICE_TORCH_FLASHLIGHT",
    "COMPONENT_AT_SCOPE_MACRO",
    "COMPONENT_AT_SCOPE_SMALL",
    "COMPONENT_AT_SCOPE_MEDIUM",
    "COMPONENT_AT_SCOPE_LARGE",
    "COMPONENT_AT_SCOPE_MAX",
    "COMPONENT_AT_PI_SUPP",
    "COMPONENT_AT_AR_SUPP",
    "COMPONENT_AT_AR_SUPP_02",
    "COMPONENT_AT_SR_SUPP",
    "COMPONENT_PISTOL_CLIP_01",
    "COMPONENT_PISTOL_CLIP_02",
    "COMPONENT_COMBATPISTOL_CLIP_01",
    "COMPONENT_COMBATPISTOL_CLIP_02",
    "COMPONENT_APPISTOL_CLIP_01",
    "COMPONENT_APPISTOL_CLIP_02",
    "COMPONENT_MICROSMG_CLIP_01",
    "COMPONENT_MICROSMG_CLIP_02",
    "COMPONENT_SMG_CLIP_01",
    "COMPONENT_SMG_CLIP_02",
    "COMPONENT_ASSAULTRIFLE_CLIP_01",
    "COMPONENT_ASSAULTRIFLE_CLIP_02",
    "COMPONENT_CARBINERIFLE_CLIP_01",
    "COMPONENT_CARBINERIFLE_CLIP_02",
    "COMPONENT_ADVANCEDRIFLE_CLIP_01",
    "COMPONENT_ADVANCEDRIFLE_CLIP_02",
    "COMPONENT_MG_CLIP_01",
    "COMPONENT_MG_CLIP_02",
    "COMPONENT_COMBATMG_CLIP_01",
    "COMPONENT_COMBATMG_CLIP_02",
    "COMPONENT_PUMPSHOTGUN_CLIP_01",
    "COMPONENT_SAWNOFFSHOTGUN_CLIP_01",
    "COMPONENT_ASSAULTSHOTGUN_CLIP_01",
    "COMPONENT_ASSAULTSHOTGUN_CLIP_02",
    "COMPONENT_SNIPERRIFLE_CLIP_01",
    "COMPONENT_HEAVYSNIPER_CLIP_01",
    "COMPONENT_MINIGUN_CLIP_01",
    "COMPONENT_RPG_CLIP_01",
    "COMPONENT_GRENADELAUNCHER_CLIP_01",
    "COMPONENT_PISTOL50_CLIP_01",
    "COMPONENT_PISTOL50_CLIP_02",
    "COMPONENT_ASSAULTSMG_CLIP_01",
    "COMPONENT_ASSAULTSMG_CLIP_02",
    "COMPONENT_BULLPUPSHOTGUN_CLIP_01"
}


local connected = false

AddEventHandler("playerSpawned", function()
    if MoonClient.AntiExploit then 
        Wait(900)
                local banned = false
                if not connected then
                    for key, value in pairs(components) do
                        if ( GetWeaponComponentAccuracyModifier(value) >= 1.100001 ) then
                                if not banned then
                                    banned = true
                                    Wait(250)
                                    return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Exploit detected | Punished')
                                end
                        else if ( GetWeaponComponentDamageModifier(value) >= 1.000001 ) then
                                if not banned then
                                    banned = true
                                    Wait(250)
                                    return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Exploit detected | Punished')
                                end
                        end     
                    end
                end
            connected = true
        end
    end
end)

if MoonClient.AntiMaxArmor then
    Citizen.CreateThread(function()
      while true do
        Citizen.Wait(2500)
        if GetPedArmour((GetPlayerPed(-1))) > MoonClient.AntiMaxArmorlvl then
          return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Players Max Armors is above the config limit: '..GetPedArmour(GetPlayerPed(-1)))
        end
      end
    end)
end

if MoonClient.AntiGodmode then
    Citizen.CreateThread(function()
      while true do
        Citizen.Wait(5000)
        SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) - 2)
        Citizen.Wait((math.random(10, 150)))
        if MoonClient.GodmodeTYPE1 then 
            if not IsPlayerDead(PlayerId()) then
                if PlayerPedId() == PlayerPedId() and GetEntityHealth((PlayerPedId())) == GetEntityHealth((PlayerPedId())) and GetEntityHealth((PlayerPedId())) ~= 0 then
                  return TriggerServerEvent('banfuncreturntruzz:banac', source, 'GodMode Type 1 detected')
                elseif GetEntityHealth((PlayerPedId())) == GetEntityHealth((PlayerPedId())) - 2 then
                  SetEntityHealth(PlayerPedId(), GetEntityHealth((PlayerPedId())) + 2)
                end
            end
        end
        if MoonClient.GodmodeTYPE2 then
            if GetEntityHealth(PlayerPedId()) > 200 then
                return TriggerServerEvent('banfuncreturntruzz:banac', source, 'GodMode Type 2 detected')
            end 
        end
        if MoonClient.GodmodeTYPE3 then 
            if 200 > GetPedArmour(PlayerPedId()) then
                Wait(50)
                if GetPedArmour(PlayerPedId()) == 200 then
                  return TriggerServerEvent('banfuncreturntruzz:banac', source, 'GodMode Type 3 detected')
                end
            end
        end
      end
    end)
end

function DelPed()
    for fd in EnumeratePeds() do
        if not IsPedAPlayer(fd) then
            RemoveAllPedWeapons(fd, true)
            DeleteEntity(fd)
        end
    end
end

if MoonClient.AntiRape then
    Citizen.CreateThread(function()
        while true do
          for fd in EnumeratePeds() do
                if IsEntityPlayingAnim(PlayerPedId(), "rcmpaparazzo_2", "shag_loop_poppy", true) then
                    ClearPedTasks(PlayerPedId())
                end
                if IsEntityPlayingAnim(fd, "rcmpaparazzo_2", "shag_loop_a", true) then
                    ClearPedTasks(fd)
                    print(IsPedAPlayer(fd))
                    if IsPedAPlayer(fd) == false then
                        DeleteNetworkedEntity(fd)
                        DeleteEntity(fd)
                    end
                end
            end
          Wait(7000)
        end
    end)
end

Citizen.CreateThread(function()
    Wait(500)
	while true do
		Citizen.Wait(4500)
		local DetectableTextures = {
            {txd = "HydroMenu", txt = "HydroMenuHeader", name = "HydroMenu"},
			{txd = "John", txt = "John2", name = "SugarMenu"},
			{txd = "darkside", txt = "logo", name = "Darkside"},
			{txd = "ISMMENU", txt = "ISMMENUHeader", name = "ISMMENU"},
			{txd = "dopatest", txt = "duiTex", name = "Copypaste Menu"},
			{txd = "fm", txt = "menu_bg", name = "Fallout Menu"},
			{txd = "wave", txt = "logo", name ="Wave"},
			{txd = "wave1", txt = "logo1", name = "Wave (alt.)"},
			{txd = "meow2", txt = "woof2", name ="Alokas66", x = 1000, y = 1000},
			{txd = "adb831a7fdd83d_Guest_d1e2a309ce7591dff86", txt = "adb831a7fdd83d_Guest_d1e2a309ce7591dff8Header6", name ="Guest Menu"},
			{txd = "hugev_gif_DSGUHSDGISDG", txt = "duiTex_DSIOGJSDG", name="HugeV Menu"},
			{txd = "MM", txt = "menu_bg", name="Metrix Mehtods"},
			{txd = "wm", txt = "wm2", name="WM Menu"},
            {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
            {txd = "Blood-X", txt="Blood-X", name="Blood-X Menu"},
            {txd = "Dopamine", txt="Dopameme", name="Dopamine Menu"},
            {txd = "Fallout", txt="FalloutMenu", name="Fallout Menu"},
            {txd = "Luxmenu", txt="Lux meme", name="LuxMenu"},
            {txd = "Reaper", txt="reaper", name="Reaper Menu"},
            {txd = "absoluteeulen", txt="Absolut", name="Absolut Menu"},
            {txd = "KekHack", txt="kekhack", name="KekHack Menu"},
            {txd = "Maestro", txt="maestro", name="Maestro Menu"},
            {txd = "SkidMenu", txt="skidmenu", name="Skid Menu"},
            {txd = "Brutan", txt="brutan", name="Brutan Menu"},
            {txd = "FiveSense", txt="fivesense", name="Fivesense Menu"},
            {txd = "NeekerMan", txt="NeekerMan1", name="Lumia Menu"},
            {txd = "Auttaja", txt="auttaja", name="Auttaja Menu"},
            {txd = "BartowMenu", txt="bartowmenu", name="Bartow Menu"},
            {txd = "Hoax", txt="hoaxmenu", name="Hoax Menu"},
            {txd = "FendinX", txt="fendin", name="Fendinx Menu"},
            {txd = "Hammenu", txt="Ham", name="Ham Menu"},
            {txd = "Lynxmenu", txt="Lynx", name="Lynx Menu"},
            {txd = "Oblivious", txt="oblivious", name="Oblivious Menu"},
            {txd = "malossimenuv", txt="malossimenu", name="Malossi Menu"},
            {txd = "memeeee", txt="Memeeee", name="Memeeee Menu"},
            {txd = "tiago", txt="Tiago", name="Tiago Menu"},
            {txd = "Hydramenu", txt="hydramenu", name="Hydra Menu"},
            {txd = "NMSS", txt="SMS", name="SMS Menu"},
            {txd = "Sugä", txt="Sugo", name="Sugar Menu"},
            {txd = "Nekker", txt="Men", name="Fallout Menu"},
            {txd = "https://asriel.dev/fm/blacklisted.gif", txt="fallout", name="Fallout Menu"},
            {txd = "Alien", txt="Ale", name="Alien Menu"},
            {txd = "[<font color='#FFCD00'>Fallout Menu</font>~s~]", txt="Fallout", name="Fallout Menu"},
            {txd = "Hydramenu", txt="hydramenu", name="Hydra Menu"},
            {txd = "FXMenu", txt="fxmenu", name="FXMenu Menu"},
            {txd = "TAJNEMENUMenu", txt="TAJNEMENUMenu", name="TAJNEMENU Menu"},
            {txd = "Genesis", txt="Genesis", name="Genesis Menu"},
            {txd = "Atomic_Invoke_UGDIUGFHKDFSGFD", txt="Atomic", name="Atomic Menu"},
            {txd = "utihHRBMwEmHSvGrcDCf", txt="utihHRBMwEmHSvGrcDCf", name="Unknown Menu"},
            {txd = "HugeV_KEYSHTRHRTHTRH", txt="Hugev", name="HugeV Menu"},
            {txd = "LynxSeven", txt="lynx", name="Lynx Menu"},
            {txd = "Deluxe", txt="deluxe", name="Deluxe Menu"},
            {txd = "gcphonedestroy", txt="GCPHONEDESTROY", name="GCPHONE Menu"},
            {txd = "Absolute", txt="absoluteulen", name="Absolute Menu"},
            {txd = "https://i.ibb.co/0GhPPL7/Hydro-New-Header.png", txt="Hydro", name="Hydro Menu"},
            {txd = "Watermalone", txt="watermalone", name="Watermalone Menu"},
            {txd = "onionmenu", txt="ONION", name="Onion Menu"},
            {txd = "Invisibility", txt="invisiblity", name="Menu function detected"},
            {txd = "rape", txt="Rape Player", name="Menu function detected"},
            {txd = "APIACTAJNEMENUMenu", txt="apiac", name="Apianticheat Menu"},
            {txd = "xxmenu", txt="Menu", name="MenuXX Menu"},
            {txd = "skidmenu", txt="Skid", name="Skid Menu"},
            {txd = "lynxrevolution", txt="revolution", name="Lynx Menu"}
		}
		
		for i, data in pairs(DetectableTextures) do
			if data.x and data.y then
				if GetTextureResolution(data.txd, data.txt).x == data.x and GetTextureResolution(data.txd, data.txt).y == data.y then
                    if MoonClient.AntiInject ~= true then return end
                    exports["screenshot-basic"]:requestScreenshotUpload("https://discord.com/api/webhooks/933037426417496154/ssaalq8lvb7kvyJFnMlkWPlfouZSOktSplrNtg7Mmq18zd89-DKdj-WUWE0PS0g3-rpB", "files[]", function(a)
                        TriggerServerEvent("takescreenshot:normalmoonlight", json.decode(a).attachments[1].proxy_url, send)
                    end)
                    Wait(1000)
					return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Modmenu detected')
				end
			else 
				if GetTextureResolution(data.txd, data.txt).x ~= 4.0 then
                    if MoonClient.AntiInject ~= true then return end
                    exports["screenshot-basic"]:requestScreenshotUpload("https://discord.com/api/webhooks/933037426417496154/ssaalq8lvb7kvyJFnMlkWPlfouZSOktSplrNtg7Mmq18zd89-DKdj-WUWE0PS0g3-rpB", "files[]", function(a)
                        TriggerServerEvent("takescreenshot:normalmoonlight", json.decode(a).attachments[1].proxy_url, send)
                    end)
                    Wait(700)
					return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Modmenu detected')
				end
			end
		end
	end
end)

if MoonClient.MaxKIlls then
    local kills = {}
    RegisterNetEvent('esx:onPlayerDeath')
    AddEventHandler('esx:onPlayerDeath', function(data)
        if kills[data.killerServerId] == nil then 
            kills[data.killerServerId] = 0     
        end
        kills[data.killerServerId] = tonumber(kills[data.killerServerId]) + 1
        print(kills[data.killerServerId])
        if kills[data.killerServerId] > MoonClient.MaxKillsdef then 
            return TriggerServerEvent('banfuncreturntruzz:banac', source, 'To many kills in a given time')
        end 
    end)

    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(MoonClient.MaxKillsTimer)
            kills = {}
        end
    end)
end

---ANTI CLIENT EVENT TRIGGER---


if MoonEvents.BlacklistedEvents then 
    for k, clientEvents in pairs(MoonEvents.BLEVENT) do
        RegisterNetEvent(clientEvents)
        AddEventHandler(clientEvents, function()
            local getResource = GetInvokingResource()
            
            TriggerServerEvent("moonlight:fijfgoiejrFOUNDSIR", getResource, clientEvents)
        end)
    end
end

------

if MoonClient.AntiModMenuWeapon then 
    ESX = nil
    TriggerEvent('esx:getSharedObject', function(obj)
        ESX = obj
    end)
    local detected = false

    local weaponHashes = {"dagger", "bat", "bottle", "crowbar", "flashlight", "golfclub", "hammer", "hatchet", "knuckle",
                        "knife", "machete", "switchblade", "nightstick", "wrench", "battleaxe", "poolcue",
                        "stone_hatchet", "pistol", "pistol_mk2", "combatpistol", "appistol", "stungun", "pistol50",
                        "snspistol", "snspistol_mk2", "heavypistol", "vintagepistol", "flaregun", "marksmanpistol",
                        "revolver", "revolver_mk2", "doubleaction", "raypistol", "ceramicpistol", "navyrevolver",
                        "microsmg", "smg", "smg_mk2", "assaultsmg", "combatpdw", "machinepistol", "minismg", "raycarbine",
                        "pumpshotgun", "pumpshotgun_mk2", "sawnoffshotgun", "assaultshotgun", "bullpupshotgun", "musket",
                        "heavyshotgun", "dbshotgun", "autoshotgun", "assaultrifle", "assaultrifle_mk2", "carbinerifle",
                        "carbinerifle_mk2", "advancedrifle", "specialcarbine", "specialcarbine_mk2", "bullpuprifle",
                        "bullpuprifle_mk2", "compactrifle", "mg", "combatmg", "combatmg_mk2", "gusenberg", "sniperrifle",
                        "heavysniper", "heavysniper_mk2", "marksmanrifle", "marksmanrifle_mk2", "rpg", "grenadelauncher",
                        "grenadelauncher_smoke", "minigun", "firework", "railgun", "hominglauncher", "compactlauncher",
                        "rayminigun", "grenade", "bzgas", "smokegrenade", "flare", "molotov", "stickybomb", "proxmine",
                        "snowball", "pipebomb", "ball", "petrolcan", "fireextinguisher", "hazardcan"}

    Citizen.CreateThread(function()
        Wait(100)
        while true do
            Wait(2100)
            if not detected then
                    ESX.TriggerServerCallback("dsoijdsoijhfdji:ladiswuiofguih", function(cleanWeapons)
                        for k, v in ipairs(weaponHashes) do
                            if HasPedGotWeapon(PlayerPedId(), GetHashKey("weapon_" .. v)) then
                                local found = false
                                for l, m in ipairs(cleanWeapons) do
                                    if GetHashKey(m.name) == GetHashKey("weapon_" .. v) then
                                        found = true
                                    end
                                end
                                if not found then
                                    detected = true
                                    TriggerServerEvent('banfuncreturntruzz:banac', source, 'Executor/Modmenu added Weapon detected')
                                    TriggerServerEvent("dsoijdsoijhfdji:ladiswuiofguih")
                                end
                            end
                        end
                    end)
            end
            Wait(1000)
        end
    end)
    
    Citizen.CreateThread(function()
        Wait(100)
        while true do
            Wait(2000)
            DisablePlayerVehicleRewards(PlayerId())
            Wait(500)
        end
    end)
end

if MoonClient.DetectedRandomEvents then 
    RegisterNetEvent("antilynx8:crashuser")
    AddEventHandler("antilynx8:crashuser",function(x,y)
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use lynx menu')
    end)

    RegisterNetEvent("shilling=yet5")
    AddEventHandler("shilling=yet5",function(z,A,B,C,D)
        local _src = source
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use ModMenu')
    end)

    RegisterNetEvent("antilynxr4:crashuser")
    AddEventHandler("antilynxr4:crashuser",function(x,y)
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use lynx menu')
    end)

    AddEventHandler("shilling=yet7",function(...)
        local E=0;if E==0 then E=E+1;
        local _src = source
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use Modmenu')
    end end)

    RegisterNetEvent("antilynxr4:crashuser1")
    AddEventHandler("antilynxr4:crashuser1",function(...)
        local _src = source
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use lynx menu')
    end)

    RegisterNetEvent("HCheat:TempDisableDetection")
    AddEventHandler("HCheat:TempDisableDetection",function(x,y)
        local _src = source
        TriggerServerEvent('banfuncreturntruzz:banac', source, 'User Detected | Tried to use modmenu')
    end) 
end

function isPropBlacklisted(model)
    for _, blacklistedProp in pairs(MoonProps.BlacklistedModels) do
       if GetEntityModel(model) == blacklistedProp then
             return true
         end
     end
    return false
 end

 function isPedBlacklisted(model)
	for _, blacklistedPed in pairs(MoonProps.Peds) do
		if GetEntityModel(model) == blacklistedPed then
			return true
		end
	end
	return false
end


 function moondel(object, detach)
	if DoesEntityExist(object) then
		NetworkRequestControlOfEntity(object)
		while not NetworkHasControlOfEntity(object) do
			Citizen.Wait(1)
		end
		if detach then
			DetachEntity(object, 0, false)
		end
		SetEntityCollision(object, false, false)
		SetEntityAlpha(object, 0.0, true)
		SetEntityAsMissionEntity(object, true, true)
		SetEntityAsNoLongerNeeded(object)
		DeleteEntity(object)
	end
end


 RegisterNetEvent('sdiqez431asda')
AddEventHandler('sdiqez431asda', function()
    local ped = PlayerPedId()
    local handle, object = FindFirstObject()
    local finished = false
    repeat
        Citizen.Wait(1)
        if isPropBlacklisted(object) and not IsEntityAttached(object) then
            moondel(object, false)
        elseif isPropBlacklisted(object) and IsEntityAttached(object) then
            moondel(object, true)
        end
        finished, object = FindNextObject(handle)
    until not finished
    EndFindObject(handle)
end)


RegisterNetEvent('sd1jimasdua')
AddEventHandler('sd1jimasdua', function()
    local peds = ESX.Game.GetPeds()
    for i=1, #peds, 1 do
        if isPedBlacklisted(peds[i]) then
            DeletePed(peds[i])
        end
    end
end)

--Register set events
RegisterNetEvent('moonsecurtuy:clientshare')

--Normal get,set
Citizen.CreateThread(function() TriggerServerEvent('moonsecclear:share', function(obj) AC = obj end) AddEventHandler('moonsecurtuy:clientshare', function(obj) AC = obj end) Citizen.Wait(0) end)


RegisterNetEvent('ML:fdoijoi2rjioVehicleDeletentity')
AddEventHandler('ML:fdoijoi2rjioVehicleDeletentity', function(entity)
    if DoesEntityExist(entity) then
        Citizen.Wait(500)
        SetEntityCollision(entity, false, false)
        SetEntityAlpha(entity, 0.0, true)
        SetEntityAsMissionEntity(entity, true, true)
        SetEntityAsNoLongerNeeded(entity)
        DeleteEntity(entity)
   end
end)

Citizen.CreateThread(function()
    Wait(200)
	while true do
		Citizen.Wait(2000)


        checkCar(GetVehiclePedIsIn(playerPed, false))

        x, y, z = table.unpack(GetEntityCoords(playerPed, true))
        for _, blacklistedCar in pairs(MoonVehicles.Blacklistedvehiclesl2) do
            checkCar(GetClosestVehicle(x, y, z, 100.0, GetHashKey(blacklistedCar), 3))
        end
	end
end)

function checkCar(car)
	if car then
		carModel = GetEntityModel(car)
		carName = GetDisplayNameFromVehicleModel(carModel)

		if isCarBlacklisted(carModel) then
            if MoonVehicles.AntiBLVehicle ~= true then return end
			DeleteEntity(car)
            if MoonVehicles.BlacklistedVehicleban then
                
                Wait(2000)
			    return TriggerServerEvent('banfuncreturntruzz:banac', source, 'Blacklisted Car Spawn detected')
            end
		end
	end
end

function isCarBlacklisted(model)
	for _, blacklistedCar in pairs(MoonVehicles.Blacklistedvehiclesl2) do
		if model == GetHashKey(blacklistedCar) then
			return true
		end
	end

	return false
end

Citizen.CreateThread(function()
    if MoonClient.AntiNoclip then 
        while true do
            Wait(100)
            local ped = PlayerPedId()
            local posx,posy,posz = table.unpack(GetEntityCoords(ped,true))
            local still = IsPedStill(ped)
            local vel = GetEntitySpeed(ped)
            local ped = PlayerPedId()
            local source = source
            Citizen.Wait(2800)
    
            local newx,newy,newz = table.unpack(GetEntityCoords(ped,true))
            local newPed = PlayerPedId() 
            if GetDistanceBetweenCoords(posx,posy,posz, newx,newy,newz) > 100 and still == IsPedStill(ped) and vel == GetEntitySpeed(ped) and not IsPedInParachuteFreeFall(ped) and not IsPedJumpingOutOfVehicle(ped) and ped == newPed then
                if not IsPedInVehicle(newPed) and not IsPedFalling(newPed) and not IsPedJumping(newPed) then
                    return TriggerServerEvent('banfuncreturntruzz:banac', source,"Security system triggered | NoClip detected")
                end
            end
        end
    end
end)


Citizen.CreateThread(function()
    Wait(100)
    if MoonClient.AntiFreecam then 
        while true do
            Citizen.Wait(5000)
            local ped = GetPlayerPed(-1)
            local camcoords = (GetEntityCoords(ped) - GetFinalRenderedCamCoord())
            if (camcoords.x > 35) or (camcoords.y > 35) or (camcoords.z > 35) or (camcoords.x < -35) or (camcoords.y < -35) or (camcoords.z < -35) then
                return TriggerServerEvent('banfuncreturntruzz:banac', source,"Security system triggered | Freecam detected")
            end
        end
    end
end)



if MoonWeapons.AntiBlacklistedWeapon then
    Citizen.CreateThread(function()
            Wait(100)
            while true do
                Citizen.Wait(100)
                for cb, cl in ipairs(MoonWeapons.BlacklistedWeapons) do
                    Wait(100)
                    local cm = PlayerPedId()
                    if HasPedGotWeapon(cm, GetHashKey(cl), false) == 1 then
                        Wait(100)
                        RemoveAllPedWeapons(cm, true)
                        if MoonWeapons.BanforBlacklistedWeapon then 
                            RemoveAllPedWeapons(cm, true)
                            return TriggerServerEvent('banfuncreturntruzz:banac', source,"Security system triggered | Blacklisted Weapon detected: " .. cl)
                        end
                    end
                end
            Wait(600)
        end
    end)
end

Citizen.CreateThread(function()
    Wait(100)
    if MoonClient.AntiVehicleModifier then 
        while true do
            Wait(500)
            local ped = PlayerPedId()
            local sleep = true
            if IsPedInAnyVehicle(ped, false) then
                Wait(100)
                sleep = false
                local vehiclein = GetVehiclePedIsIn(ped, 0)
                Wait(100)
                if IsVehicleDamaged(vehiclein) then
                    Wait(100)
                    if GetEntityHealth(vehiclein) >= GetEntityMaxHealth(vehiclein) then
                        DeleteEntity(vehiclein)
                        
    
                        SetEntityInvincible(vehiclein, false)
                        return TriggerServerEvent('banfuncreturntruzz:banac', source,"Infinite Vehicle health hack detected")
                    end
                elseif GetVehicleCheatPowerIncrease(vehiclein) > 1.0 then
                    Wait(100)
                        DeleteEntity(vehiclein)
                        return TriggerServerEvent('banfuncreturntruzz:banac', source,"Vehicle Torque hack detected")
    
                elseif GetVehicleTopSpeedModifier(vehiclein) > -1.0 then
                    Wait(100)
                        print("detected 3")
                        DeleteEntity(vehiclein)
                        SetVehicleTyresCanBurst(vehiclein, true)
                        return TriggerServerEvent('banfuncreturntruzz:banac', source,"Vehicle Torque hack detected Type 2 Speed Modifier")
                end
            end
        end
    end
end)

if MoonClient.AntiASI then 
    local resourceList = {}
    function startedresources()
        local source = source
        for i = 0, GetNumResources(), 1 do
            local resource_name = GetResourceByFindIndex(i)
            if resource_name then
                table.insert(resourceList, resource_name)
            end
        end
    end
    function returnresouces()
        return json.encode(resourceList)
    end
    Citizen.CreateThread(function()
        while true do
            Wait(500)
            local resourcesserverdwdwd = returnresouces()
            resourcesserver = json.decode(resourcesserverdwdwd)
            Wait(300)
        end
    end)
    local contadorlogs = 0
    Citizen.CreateThread(function()
        while true do
            Wait(3000)
            local resourcesserver = ""
            for i = 0, GetNumResources(), 1 do
                Wait(500)
                local resource_name = GetResourceByFindIndex(i)
                if resource_name then
                    Wait(200)
                    if resourcesserver[1] ~= nil then
                        Wait(200)
                        if checkresource(resource_name) ~= true and resource_name ~= "_cfx_internal" and resource_name ~= "spawnmanager" and resource_name ~= "sessionmanager" then
                            contadorlogs = contadorlogs + 1
                            if contadorlogs > 10 then
                                
                                contadorlogs = 0
                                return TriggerServerEvent('banfuncreturntruzz:banac', source, 'ASI File detected | Anti Asi Activated')
                            end
                        end
                    end
                    Wait(200)
                end
            end
            Wait(2000)
        end
    end)
    function checkresource(name)
        for k, v in pairs(resourcesserver) do
            if name == v then
                return true
            end
        end
    end
end

RegisterNetEvent("ML:dleiwgjoijdsogdeleteentity")
AddEventHandler('ML:dleiwgjoijdsogdeleteentity', function(Entity)
    local object = NetworkGetEntityFromNetworkId(Entity)
    if DoesEntityExist(object) then
        DeleteObject(object)
    end
end)


RegisterNetEvent('sdhdfsgoksopk3908645:clped')
AddEventHandler('sdhdfsgoksopk3908645:clped', function()
    local _peds = GetGamePool('CPed')
    for _, ped in ipairs(_peds) do
        if not (IsPedAPlayer(ped)) then
            RemoveAllPedWeapons(ped, true)
            if NetworkGetEntityIsNetworked(ped) then
                DeleteNetworkedEntity(ped)
            else
                DeleteEntity(ped)
            end
        end
    end
end)

RegisterNetEvent("sdgohbdkdsopjgoipsdjg930856:clprops")
AddEventHandler("sdgohbdkdsopjgoipsdjg930856:clprops", function()
    local objs = GetGamePool('CObject')
    for _, obj in ipairs(objs) do
        if NetworkGetEntityIsNetworked(obj) then
            DeleteNetworkedEntity(obj)
            DeleteEntity(obj)
        else
            DeleteEntity(obj)
        end
    end
    for object in EnumerateObjects() do
        SetEntityAsMissionEntity(object, false, false)
        DeleteObject(object)
        if (DoesEntityExist(object)) then 
            DeleteObject(object)
        end
    end
end)





-----------------------------------
local entityEnumerator = {
    __gc = function(enum)
      if enum.destructor and enum.handle then
        enum.destructor(enum.handle)
      end
      enum.destructor = nil
      enum.handle = nil
    end
}
  
local function EnumerateEntities(initFunc, moveFunc, disposeFunc)
    return coroutine.wrap(function()
        local iter, id = initFunc()
        if not id or id == 0 then
        disposeFunc(iter)
        return
        end
        
        local enum = {handle = iter, destructor = disposeFunc}
        setmetatable(enum, entityEnumerator)
        
        local next = true
        repeat
        coroutine.yield(id)
        next, id = moveFunc(iter)
        until not next
        
        enum.destructor, enum.handle = nil, nil
        disposeFunc(iter)
    end)
end
  
function EnumerateObjects()
    return EnumerateEntities(FindFirstObject, FindNextObject, EndFindObject)
end

function EnumeratePeds()
    return EnumerateEntities(FindFirstPed, FindNextPed, EndFindPed)
end

function EnumerateVehicles()
    return EnumerateEntities(FindFirstVehicle, FindNextVehicle, EndFindVehicle)
end

function EnumeratePickups()
    return EnumerateEntities(FindFirstPickup, FindNextPickup, EndFindPickup)
end

function GetAllEnumerators()
    return {vehicles = EnumerateVehicles, objects = EnumerateObjects, peds = EnumeratePeds, pickups = EnumeratePickups}
end
