This function seemed a little strange to me.

What draws the most attention is that, there is another function inside it that removes the player, and this function is inside a for that theoretically removes the player. So, the removePlayer function would only serve to remove the player from this party table, or even more simply, set its value to null

The changes I made were to add the nullability checker to the party table, and remove the for (which, for me, should be inside the removeMember function)
Afterwards, I released the party table, changed the name of the function and added some prints to better visualize errors