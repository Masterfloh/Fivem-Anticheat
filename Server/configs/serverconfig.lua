--[[
        • ▌ ▄ ·.              ▐ ▄ ▄▄▌  ▪   ▄▄ •  ▄ .▄▄▄▄▄▄
        ·██ ▐███▪▪     ▪     •█▌▐███•  ██ ▐█ ▀ ▪██▪▐█•██  
        ▐█ ▌▐▌▐█· ▄█▀▄  ▄█▀▄ ▐█▐▐▌██▪  ▐█·▄█ ▀█▄██▀▐█ ▐█.▪
        ██ ██▌▐█▌▐█▌.▐▌▐█▌.▐▌██▐█▌▐█▌▐▌▐█▌▐█▄▪▐███▌▐▀ ▐█▌·
        ▀▀  █▪▀▀▀ ▀█▄▀▪ ▀█▄▀▪▀▀ █▪.▀▀▀ ▀▀▀·▀▀▀▀ ▀▀▀ · ▀▀▀ 
            
                        Protected and Safe
]]--

MoonServer = {}

MoonServer.GeneralWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for general infos
MoonServer.ErrorWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for errors
MoonServer.DebugWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for debug
MoonServer.ScreenshotWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for screenshots
MoonServer.WarnWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for warns
MoonServer.ExplosionWebhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for explosions

MoonServer.Startwebhook = true -- Start webhooks

-- // Extern Webhooks // --

MoonServer.Connectionlogs = true -- Logs the connection
MoonServer.Connectionlogs_Webhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for connection logs

MoonServer.Leavelogs = true -- Logs the leave
MoonServer.Leavelogs_Webhooks = "https://discord.com/api/webhooks/991375274405003264/f3TdQdZItvnasjbkE2BStoHhDl0U9rxeTuLUltFySogXcxHY_sI2a3TaOupIRCMJiIHR" -- Webhooks for leave logs

-- // Server Settings // --

MoonServer.FiveMServername = "MoonServer" -- Server name
MoonServer.banmsg = "You have been banned from this server." -- Ban message

MoonServer.ConfigRefreshCommand = "moonrefresh" -- Command to refresh the config to not restart the anticheat

MoonServer.UseNormalBansystem = true -- Use normal bansystem
MoonServer.UseGlobalBan = false -- Use global bansystem

MoonServer.AntiSpoofer = true -- Will prevent players from joining with a spoofed account

MoonServer.Heartbeat = false -- Heartbeat to prevent client stopping

-- // Developer Mode // --

MoonServer.AntiBackdoor = true -- Anti backdoor will scan for the backdoors [CONSOLE CMD: backdoorscan]
MoonServer.BackdoorString = "cipher" -- Backdoor string you can change this to look for other backdoors

MoonServer.AntiVPN = false -- If true, the player will be prevented from connecting to the server via a VPN.

MoonServer.DebugMode = true -- Enables the debug mode
MoonServer.PrintMode = true -- Enables the print mode

MoonServer.Badcrashes = true -- If true, the player will receive a ban if the player uses this crash method.

MoonServer.Layer7Protection = true -- If true, the player will receive a ban if the player uses this layer7 DdOS method. [NEW]

-- // Player Protection // --

MoonServer.ANTICarKick = true -- If true, the player will be prevented from beeing kicked out of a car.

-- // Fake Events // --

MoonServer.FakeTriggers = true -- If true, the server generates fake events and if the modder tries to trigger them, he gets banned.

MoonServer.ListFakeTriggers = { -- Insert fake triggers here.
	"esx:lesterVendita",
	"esx:givemoney", -- Add more fake events in here. Known events which arent listed on your server.
}

-- // Limiter // --

MoonServer.Entiy = false
MoonServer.EntityKick = false
MoonServer.EntityBan = false


MoonServer.Entityobjects = false
MoonServer.EntityobjectLimit =  5

MoonServer.EntityPed =  false
MoonServer.EntityPedLimit =  5

MoonServer.EntityVehicle = false
MoonServer.EntityVehicleLimit = 5


MoonServer.AntiParticles = false
MoonServer.AntiParticlesLimit = 5


-- // TriggerSettings // --

MoonServer.TriggerLimit = true -- Enables the trigger limit
MoonServer.LimitTrigg = { -- Add more events in here to limit them
    [1] = {TriggerName = "esx:lesterVendita", MaxRepeats = 5, Seconds = 10, maxamount = 500},
    [2] = {TriggerName = "esx:lesterVendita", MaxRepeats = 5, Seconds = 10, maxamount = 500},
}

MoonServer.TriggerConfused = true -- Will create confused events


-- // Weapon Event Settings // --

MoonServer.AntiGiveWeapon = true -- Enables the anti-give weapon system
MoonServer.AntiRemoveWeapon = true -- Enables the anti-remove weapon system
MoonServer.Weaponmaxammo = "200" -- Max ammo for weapons


-- // EVENT BLACKLIST // --

MoonServer.EventBlacklist = true -- Will make your events unreadable in the executors

MoonServer.SecureEvents = true
MoonServer.SecuredEvents = {
    securedevent1 = {
        trigger = "securedevent1"
    },
    securedevent2 = {
        trigger = "securedevent2"
    }
}

MoonServer.EventBlacklist = true
MoonServer.BlacklistedEvents = {
    "blacklistedevent1",
    "blacklistedevent2",
    "blacklistedevent3"
}

MoonServer.SecretList = {
    Routes = {
        WeedRoute = {
            Coords = {x =  3535, y = 3535, z = 3535}
        }
    }
}