function removePlayerFromParty(playerId, membername)
    player = Player(playerId)
    local party = player:getParty() --Returns a table with all the members in the party


    if party ~= nil then --Checks if the party isn't empty
        local selectedMember = Player(membername)
        if selectedMember ~= nil then --Checks if the player isn't null
            party:removeMember(selectedMember) --Uses the removeMember function
            party.free()
        else
            print("Player unknown")
        end
    else
        print("Not in a party") 
    end
end
