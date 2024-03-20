void Game::addItemToPlayer(const std::string &recipient, uint16_t itemId)
{
    Player *player = g_game.getPlayerByName(recipient);
    if (!player)
    {
        player = new Player(nullptr);
        if (!IOLoginData::loadPlayerByName(player, recipient))
        {
            delete player; //Leak here
            return;
        }
    }

    Item *item = Item::CreateItem(itemId);
    if (!item)
    {
        delete player; //Leak here
        return;
    }

    g_game.internalAddItem(player->getInbox(), item, INDEX_WHEREEVER, FLAG_NOLIMIT);

    if (player->isOffline())
    {
        IOLoginData::savePlayer(player);
        
    }
    delete player;//And leak here
}