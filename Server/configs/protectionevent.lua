--[[
        • ▌ ▄ ·.              ▐ ▄ ▄▄▌  ▪   ▄▄ •  ▄ .▄▄▄▄▄▄
        ·██ ▐███▪▪     ▪     •█▌▐███•  ██ ▐█ ▀ ▪██▪▐█•██  
        ▐█ ▌▐▌▐█· ▄█▀▄  ▄█▀▄ ▐█▐▐▌██▪  ▐█·▄█ ▀█▄██▀▐█ ▐█.▪
        ██ ██▌▐█▌▐█▌.▐▌▐█▌.▐▌██▐█▌▐█▌▐▌▐█▌▐█▄▪▐███▌▐▀ ▐█▌·
        ▀▀  █▪▀▀▀ ▀█▄▀▪ ▀█▄▀▪▀▀ █▪.▀▀▀ ▀▀▀·▀▀▀▀ ▀▀▀ · ▀▀▀ 
            
                        Protected and Safe
]]--

MoonProtect = {}

MoonProtect.UseLockDown = true -- If this is enabled, then you can use the lock function for your events

MoonProtect.LockTrigger = { -- If you want to add more Events just use this format: {'eventName', 'PasswordForEvent'},
	{'esx_illegal_drugs:startTransformOpium', 'dfhu290u90u092uoiefjoipjopsjposdg'},
	{'esx_bitcoin:stopHarvestKoda', 'bdfokq094390859028opsjopfajopgsjopsg'},
	{'esx_banksecurity:pay', 'sagspok290i903iopasjgdnmiklhj'},
}

--------------------------------------------------------------------------------------------
--After adding your events in the LockTrigger, you can use the lock function for your events
--------------------------------------------------------------------------------------------
----TriggerServerEvent('Moonlight:TriggerProtectedEvent', 'Password', 'EventName', etc)-----
--------------------------------------------------------------------------------------------
--------------This above is the format for the protected events-----------------------------
--------------------------------------------------------------------------------------------