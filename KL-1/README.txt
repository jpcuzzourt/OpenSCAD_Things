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


http://www.thingiverse.com/thing:3551300
KL-1 Russian Calculator Case by jpcuzzourt is licensed under the Creative Commons - Attribution license.
http://creativecommons.org/licenses/by/3.0/

# Summary

/*This is still very much in progress. I don't really recommend you take it as-is to be a perfect product. Just something I tinkered with as I was learning openSCAD and the Customizer. I decided to go ahead and make it public anyway. If you have a KL-1 and make this case for it, please post your MAKE! And enjoy! 
Update (4-18-19): I generated and added stl models that you can download directly without running customizer if you want. I recommend that you slice and print the top and bottom separately to avoid "strings" between the two as they print.
Customizer app seems broken today. I get different output from customizer than running OpenSCAD directly.

*/



First, instructions:
To open it, twist lid counter-clockwise till it stops, then lift lid.
To close it, place lid on and twist clockwise until it is a little tight, less than 1/6 turn.

WHAT IS IT?

This is a simple reproduction case for the KL-1 (КЛ-1) Soviet era round mechanical pocket slide rule calculator.

These handy mechanical pocketwatch-style round slide rules are widely available on eBay, but the original case is usually missing or broken.

The case employs a unique closure style that I have reproduced here. I don't know what it is called, but it works by tightening pairs of ramped edges together as one twists it clockwise.

If you twist it too far, it will "click", which means you went a little too far. But it won't hurt anything. Just twist it a little further and not quite as hard this time. (There are 6 "ramped" surfaces on the top and bottom that tighten against one another. No threads or latches.)

The horizontal layered line texture of a 3D print make this close even more securely than the original. Honestly, this mechanism is all that separates this from a very plain cylindrical box, but it was a fun bit of OpenSCAD code to write as I am learning.

The code is written very parametrically so that it should be relatively easy to modify a handful of sizes and make this work for a lot of unique enclosures for objects that you'd like to secure in a box that can fit in a purse, pocket, or tackle box.


# How I Designed This

## Measure

I began by taking a set of measurements of all the important dimensions of my existing original KL-1 case.
I then wrote some code to produce it. By first couple of prints weren't quite right, so I added good deal of debugging/analysis code so that I could ensure that the clearances were logical, the volumes about right, etc, so that I could adjust and play with the model until I felt I had something worth printing.
That approach worked very well, and left me with an easy way to design similar boxes in many shapes and sizes for other purposes.