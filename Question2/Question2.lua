function printSmallGuildNames(memberCount)
    -- this method is supposed to print names of all guilds that have less than memberCount max members
    local selectGuildQuery = "SELECT name FROM guilds WHERE max_members < %d;" --Query
    local resultId = db.storeQuery(string.format(selectGuildQuery, memberCount))  --Stores Query in a table

    --Checks if the return from the query is'nt null
    if resultId == nil then
        print("No results from the query")
        return
    else
        while resultId.next() do --Print every data from the query,instead of only the first one
            local guildName = resultId.getString("name")
            print(guildName)
        end
        resultId.free() --For avoid memory leaks
    end
end
