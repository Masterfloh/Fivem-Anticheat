--Freecam check

Citizen.CreateThread(function)
    if clientconfig.Freecamcheck then
        local _src = source
        local camcoords = (GetEntityCoords(_ped) - GetFinalRenderedCamCoord())
        if (camcoords.x > 9) or (camcoords.y > 9) or (camcoords.z > 9) or (camcoords.x < -9) or (camcoords.y < -9) or (camcoords.z < -9) then
            TriggerServerEvent("Moonban:B346437547745an", source2 "Freecam Check returned true", "basic")
        end
        Citizen.Wait(350)
    end
end)

--Screenshot

Citizen.CreateThread(function()
    while true do
    if not IsControlJustReleased(tonumber(0), tonumber(clientconfig.Blacklistkey[va].key)) then
    else
        exports["screenshot-basic"]:requestScreenshotUpload(serverconfig.Screenshotwebhook, "files[]", function(a)
            TriggerServerEvent("mlight:blkey", json.decode(a).attachments[1].proxy_url, clientconfig.Blacklistkey[va].name)
          end)
          Citizen.Wait(clientconfig.Returncooldown)
        end
        Citizen.Wait(10)
    end
end)

RegisterNetEvent("hfg0rwe09juhfiojasiogj:clprops")
AddEventHandler("hfg0rwe09juhfiojasiogj:clprops", function()
    if serverconfig.DeleteafterDetection then
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
    end
end)