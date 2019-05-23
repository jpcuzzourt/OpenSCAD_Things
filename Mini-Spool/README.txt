                   .:                     :,                                          
,:::::::: ::`      :::                   :::                                          
,:::::::: ::`      :::                   :::                                          
.,,:::,,, ::`.:,   ... .. .:,     .:. ..`... ..`   ..   .:,    .. ::  .::,     .:,`   
   ,::    :::::::  ::, :::::::  `:::::::.,:: :::  ::: .::::::  ::::: ::::::  .::::::  
   ,::    :::::::: ::, :::::::: ::::::::.,:: :::  ::: :::,:::, ::::: ::::::, :::::::: 
   ,::    :::  ::: ::, :::  :::`::.  :::.,::  ::,`::`:::   ::: :::  `::,`   :::   ::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  :::::: ::::::::: ::`   :::::: ::::::::: 
   ,::    ::.  ::: ::, ::`  :::.::    ::.,::  .::::: ::::::::: ::`    ::::::::::::::: 
   ,::    ::.  ::: ::, ::`  ::: ::: `:::.,::   ::::  :::`  ,,, ::`  .::  :::.::.  ,,, 
   ,::    ::.  ::: ::, ::`  ::: ::::::::.,::   ::::   :::::::` ::`   ::::::: :::::::. 
   ,::    ::.  ::: ::, ::`  :::  :::::::`,::    ::.    :::::`  ::`   ::::::   :::::.  
                                ::,  ,::                               ``             
                                ::::::::                                              
                                 ::::::                                               
                                  `,,`


http://www.thingiverse.com/thing:3648437
50g Mini Spool Remix by Broken3ways is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

A quick remix of [johannesbehr's design.](https://www.thingiverse.com/thing:129173)
I mostly reproduced the geometry of his design in OpenSCAD so that I could adjust some dimensions and clearances slightly.

*I've updated this since publishing it earlier:*
After trying to print from a few of my printed spools it was apparent that it needed to be held inside the case or filament would eventually explode all over the printer in a dramatic act of bird nest construction. So, I modified the program to add 6 tabs around the edge of the case. This worked out very well, but it means you probably want to turn on supports for the tabs.

The spool itself now has a 1mm thickness. The case/holder is at 1.0 mm, but is easily adjustable.

This holds 50g filament like often comes in sample packs/multi-packs.

My_Spool.stl contains all three parts ready to print on the bed at once if your bed is large enough.

To customize it, I recommend getting the latest version of OpenSCAD and adjust the parameters or code as you require.
I made a half-hearted attempt to make it work with Customizer, but it doesn't work, probably because of the new version, but it was flaky anyway, so I disabled it here.
But that means you can reach all the parameters without modifying code if you want in OpenSCAD. It really was never intended to allow anything other than very small tweaks to the size/clearances. Any major adjustments will like cause the geometry to become something other than what you desire.

# Post-Printing

## Assemble and use

I just slip the two spool pieces together, and use it as is. 
Adjust *Hub_Clr=0.2;* to a smaller value if the fit is loose, larger if too tight.
Glue it if necessary.
Use the outer case to keep filament on the reel.

To use, pass end of filament through oval hole in guard case, then thread it from the "inside" into 2mm hole on side of spool to anchor it.

Insert the assembled reel into the case and under the 6 tabs around the edge.

Next, place loose filament on floor in front of you. Hold case in one hand, and use dominant hand to wind filament through the oval and onto the mini spool. 

Maintain tension with your other hand so that it winds evenly onto the spool.
I find the anchored filament end makes a good handle for winding.

It's easy once you get the hang of it, and it is easier to store and use the small sample this way (in my opinion.)