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


http://www.thingiverse.com/thing:3610339
Customizable 14-flute Oil Filter Wrench by jpcuzzourt is licensed under the Creative Commons - Attribution - Non-Commercial - No Derivatives license.
http://creativecommons.org/licenses/by-nc-nd/3.0/

# Summary

This is a branch of an earlier project.
The [original](https://www.thingiverse.com/thing:3567229) was made for a couple of specific Toyota applications.
Here, I want to open up the Customizer a little more, and let you select your size more freely. I figure more people will find this useful.

Just measure across the flats of your filter (mm), and put the number in, along with a reasonable clearance value (I recommend 1.0mm). 
(Before you print the whole thing, print just the first 5 or so layers and verify that it will fit your filter. It not, check your measurements, and adjust the clearance parameter as needed.)

Choose a nut size (mm) and whether you want the 3/8" square drive hole include or not.

For more, please refer back to the [original source project.](https://www.thingiverse.com/thing:3567229)
I have not restricted the inputs to reasonable values.
This geometry should work for common sizes of filters. Let me know if it doesn't.
If you need to adjust some other feature for your wrench/filter and don't know OpenSCAD or can't make head or tails of my crappy code (I was learning as I wrote this,) just leave a comment and I'll try to help.


Here's an example:
Your buddy shows up with a six pack and some trash heap from the junk yard and wants you to help him change the oil under your shade tree. But it has a weird oil filter size, and you don't want to get your favorite water pump pliers dirty to remove the overtightened filter. So you set out to 3D print a custom oil filter wrench, just for him/her.

1. Count the flats. (You count 14, good. If you don't get 14, don't use this Thing.Leave a comment instead.)
2. Measure across the flats with your digital caliper. (You get 52 mm.)
3. Click "Open in Customizer" and enter 52 as Filter Size.
4. Leave the Clearance AF at 1.0 mm
5. You don't have any metric sockets, but you do have a 5/8", so
6. Multiply 5/8" times 25.4 to get 15.875mm and enter that as the Nut Size
7. Just in case you can't find your 5/8" socket, leave Square Drive selection as "Yes".
8. Click on Create Thing.

This will create a custom thing for you with the dimensions you need.
The model will have a 53 mm spacing across the flats, and a 5/8" drive nut and a 3/8" square drive as well.

9. Print the model, but be sure to print at least 3 lines for walls, and check that the slicer doesn't merge the meshes together. I use Cura 4.0 at 0.15 mm layer height. Check the preview and be sure the nut and the finger grips extend about 5mm down into the top of the wrench and have their own walls. (See the photos with the section views to see the internal geometry.)That'll be 6 layers on each stressed edge. Nice and strong. If the meshes get merged by the slicer, the nut, and even the finger grips will probably snap the first time you use it.

Take the six-pack from your buddy and consume it while model prints. Hand the new filter wrench to your buddy and tell him to knock himself out.

**Note:** I highly recommend you skip the Customizer, and instead download the latest development snapshot of [OpenSCAD](https://www.openscad.org/downloads.html), which has a "Customizer"-like panel which will let you easily customize the part without modifying any code. It is faster and much more reliable than the web-based Customizer app. 


# Print Settings

Printer Brand: Creality
Printer: Ender 3 Pro
Rafts: Doesn't Matter
Supports: Doesn't Matter
Resolution: 0.15 mm
Infill: 25%
Filament_brand: Amazon Basics
Filament_color: Black
Filament_material: PLA