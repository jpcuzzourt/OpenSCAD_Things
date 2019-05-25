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

*Changes 5/24*
I've replaced the "Case" piece with the simpler "Guard".


A quick remix of [johannesbehr's design.](https://www.thingiverse.com/thing:129173)
I mostly reproduced the geometry of his design in OpenSCAD so that I could adjust some dimensions and clearances slightly.

This holds 50g filament like often comes in sample packs/multi-packs.

The spool itself now has a 1.0 mm thickness. The case/holder is at 1.0 mm, but is easily adjustable.

As printed, mine weigh about 22 g (with "cover", or 16 g with new "guard"*). Print it, assemble it, weigh it, and mark it! Then wind those remnants or samples for convenient use.


*I've updated this since publishing it earlier:*
After trying to print from a few of my printed spools it was apparent that it needed to be held inside the case or filament would eventually explode all over the printer in a dramatic act of bird nest construction. So, I modified the program to add 6 tabs around the edge of the case. This worked out very well, but it means you probably want to turn on supports for the tabs. Other than the tabs and the adjustable clearances, these models are nearly identical to the originals.
*One more update - I've replaced the "cover" with the simpler "guard" piece.
Code is stil in place to make the full "cover" but I don't think it's warranted.

Spool.stl contains all three parts (Spool A, Spool B, and Guard) ready to print on the bed at once if your bed is large enough.

To customize it, I recommend getting the latest version of OpenSCAD and adjust the parameters or code as you require.

I made a half-hearted attempt to make it work with Customizer, but it doesn't work, probably because of the new version, and Customizer is flaky anyway, so I disabled it here.

But you CAN reach all the parameters without modifying code if you want in OpenSCAD. It really was never intended to allow anything other than very small tweaks to the size/clearances. Any major adjustments will like cause the geometry to become something other than what you desire.

# Print Settings

Printer Brand: Creality
Printer: Ender 3 Pro
Rafts: No
Supports: Yes
Resolution: 0.28
Infill: none
Filament_brand: Amazon Basics
Filament_color: White
Filament_material: PLA

Notes: 
I print these quick, dirty, and fast. It takes about 90* minutes to produce one of these. They don't need to be pretty, I crank up the speed on everything and let her rip. 
It just needs to be structurally sound.
After many experiments today, I've determined that a thin bead of CA adhesive to connect Parts A and B will eliminate any problems.
And the six little tabs are just enough to hold it all together while winding and while in use.

*Printing is faster now with the guard instead of the case.

# Post-Printing

## Assemble and use

I just slip the two spool pieces together and use a little superglue between Spool_A and Spool_B.
Adjust *Hub_Clr=0.2;* to a smaller value if the fit is loose, larger if too tight.
It should come out nearly perfect as is.
Use the outer case to keep filament on the reel.

To use, pass end of filament through oval hole in guard case, then thread it from the "inside" into 2mm hole on side of spool, then tuck the end into the next 2mm hole to anchor it.

Insert the assembled reel into the case and under the 6 tabs around the edge.

Next, place loose filament on floor in front of you. Hold case in one hand, and use dominant hand to wind filament through the oval and onto the mini spool. 

Maintain tension with your other hand so that it winds evenly onto the spool.
I find the anchored filament end makes a good handle for winding.

Periodically lift the loose filament off the floor to allow it to unwind, preventing kinks.

It's easy once you get the hang of it, and it is easier to store and use the small sample this way (in my opinion.)

My spool has a mass of about 22g. I write that on the rim of each spool, so determining whether there is enough filament on the spool to do some small job is as simple as putting it on a scale and subtracting 22g. No more guessing.