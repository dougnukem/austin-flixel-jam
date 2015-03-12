# Adding Creatures And Level Chunks #

## [Dev tips from Shay](http://groups.google.com/group/austin-flixel-jam-/browse_thread/thread/128765c67b86d6b5) ##

For those who have time to keep working on Terminal Velocity it shouldn't be too hard to get other creatures in if you look at the **BounceCreature** class and how it works. Once you make a new creature, you can get it to show up in the **level chunks** that the game is made up of.

It should be easy to copy some of the classes in the **levelChunks** folder and make new ones Though you'll have to be sure to add your new level chunk classes to the list of available chunk classes in the **LevelGenerator.as** file.

**TIP:** You can test faster by making the chunk you're working on the only one in that list, so it always shows up.