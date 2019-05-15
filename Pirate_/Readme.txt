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


http://www.thingiverse.com/thing:3626613
Ender 3 Pirate Extruder Knaarrrrrb! by Broken3ways is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

It's a knob to go on your extruder motor shaft for Creality Ender 3 and some others.
If you're new to your printer and it doesn't have a knob for the extruder, you want to get one. It WILL make your life easier. Aarrrrrrr!!!

This is a tight friction fit, so be sure to read my printing notes below and do a shorter test print first!

**O Captain! My Captain!**

If you are a Pastafarian like me, the thing your Ender-3 or Ender-3 Pro needs to be truly blessed in its printing efforts is a pirate to stand over the job, and spin merrily, or perhaps do a jig with lots of retractions going on. This will indubitably attract positive attentions from the FSM. May you be touched by His noodly appendage!

If you aren't a Pastafarian like me, you may not understand the special reverence I have for pirates. But that's OK. I'm not here to proselytize. Christians, Muslims, Hindus, and even you godless heathens and pagans - I'm just glad you're here to look at this *Thing*. I hope you will print, use, and _ENJOY_ it! 

And trust me, my photo doesn't do it justice. The TTTY3D Silk Copper PLA I printed him in was just too shiny. IRL, he looks great.


This is a remix of two projects, a [pirate scan sculpture](https://www.thingiverse.com/thing:742940) by [kolo33](https://www.thingiverse.com/Kolo33/about) and an extruder knob ([this one](https://www.thingiverse.com/thing:3176144), I think) for the Ender 3 Pro. 
It was also inspired by the popular and excellent [Yoda extruder knob](https://www.thingiverse.com/thing:3141160/comments) by [JaZzSuperman](https://www.thingiverse.com/JaZzSuperman/about).

Enjoy!


# Print Settings

Printer Brand: Creality
Printer: Ender 3 Pro
Rafts: Doesn't Matter
Supports: Yes
Resolution: 0.15mm
Infill: 25%
Filament_brand: TTYT3D
Filament_color: Silk Shiny Copper
Filament_material: PLA

Notes: 
**How and What to print**

Though there are several files included, you only _need_ to print "Ender_3_PirateKnob.stl"

Print it using supports only from the bed. 

Also, when I sliced it, Cura tried to put two supports from the bed through tiny holes in the fused wheel/statue base, and up to features like his elbow and coat-tail. I used a "support-blocker" in Cura to knock those unwanted supports out before I generated gcode.

If it is causing anyone difficulty, leave me a message or a comment, and I can block (or better yet, help you block) the offending openings.

For some people\* the hole is too tight to fit the extruder shaft. It fits perfectly on mine. **Try printing just the bottom (or the included knob source part) to be sure it fits.** If it is too small, most people scale it to 102% and it fits. Remember there is a **flat** on the shaft, so be sure you have it aligned before you decide it is too small. You want a snug fit.
(\*Based on comments in the source knob Thing.)


# Post-Printing

Just clean off the supports from underneath the knob handle.
Locate the flat side of the hole.
Locate the flat side of your extruder motor shaft.
Align the flats, and firmly press fit the Capt'n onto the shaft.
Support the motor from underneath as you do so.
(You already checked that it would fit *BEFORE* you printed the whole thing, right?)

Now print something with lots of retractions and watch him spin!

Also, since he extends about 10 cm vertically, check to be sure that he won't collide with your filament spool or any accessories if you raise the z-axis all the way up!
It would be a shame to have him collide with something and fall into your 250mm tall Eiffel Tower print and ruin it!

# How I Designed This

## How I combined the knob and the pirate

I started by taking the pirate model and scaling it down to 8cm tall. At this height, his rectangular base just fits within the knob's handle.The pirate model was huge, and so I loaded it in something - Windows 3D Builder, I think - and reduced the complexity (the number of triangular faces) - by a considerable factor. I kept about all the geometry our Ender 3s can manage though. It makes rendering and processing the object much, much faster though. I'm pretty sure I did the scaling in 3D Builder too. Anyway, then I just saved it out as the include "Pirate80.stl".
Next I wrote a quick script in OpenSCAD to shift the parts around and combine them.
They were each already centered on the z-axis, so they only needed to be raise/lowered appropriately.
Here's the OpenSCAD code. In OpenSCAD, where the two objects overlap, they simply become one.
Just press F6 to "render" the object, and then you can export a new .STL file yourself.

    translate([0,0,5.3])    //Raise the pirate 5.3 mm
    import("Pirate80.stl"); //import 8 cm scaled and simplified Pirate model
    translate([0,0,-12])    //Lower the knob handle flush with x/y plane
    import("Ender_3_Extruder_Knob1.stl"); //the original extruder knob

If you haven't ever used OpenSCAD, go grab it now. It's free and open source.
It's small and super powerful too.