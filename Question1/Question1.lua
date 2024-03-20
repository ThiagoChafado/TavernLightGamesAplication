local function releaseStorage(player)
    player:setStorageValue(1000, -1) --Sets the flag to the key 1000 to -1
end                                  --In this case,it is the flag to do a logout only if the player is logged

function onLogout(player)
    if player:getStorageValue(1000) == 1 then
        addEvent(releaseStorage, 1000, player)  --A function to add a event in a list of scheduled events
        return true --Returns true, to indicates sucess
    else
        return false --Player already is offline, return for debugging 
    end
    
end
