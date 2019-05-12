/*this is still pretty ugly code.
    I have not done testing of the fit and strength of these parts.
    I still have lots of code cleanup to do also :-) i.e. (Don't look too close!)
    Please let me know in the comments on Thingiverse if you have trouble with fit or function
    or if you need additional selections available in the Customizer
    If you use OpenSCAD you can probably find the variables to adjust somewhere below
    to customize this as desired.
*/
/*V1.1
Added customization options, such as whether to include the square drive hole, or not.
Additional selections for nut size and filter diameters
*/
/*V1.0
rewrote the grips() module for better clarity and such that the 
MCAD library is not required. I didn't like the right triangle or
rounded box implementation that I was using from there because it 
was sometimes unclear how large the generated objects would be and I
needed to be able to precisely make the cutouts for the grips.
that has been corrected.
Final part should always consist of 10 meshes.
Each grip is 2 independent meshes, and so is the nut in the center.
*/
/*V0.7
Corrected a bug in 0.6 that cause traingular struts to be 1 mm too high above top
*/
/*V0.6
Just cleaned up the part by covering the interior bottom with bot_thk, about 1mm
of plastic so that the structure didn't show through
*/
//V0.5 First usable release
//Finger grips should be plenty strong to use for removing filters.
//no guarantees on the nut, or 3/8" driver strength, but it has been made much stronger
//model is actually 10 separate structures. The parts extend through the top of the wrench
//with their own walls for added strength, almost like they are press-fit into place.
//In this version, I allowed them to extend through the bottom surface for visibility as well.
//Also not that in order to prevent some potential non-manifold issues when using the rounded boxes, 
//I had to leave largish gaps around the finger grips. You may see some light though the edges.
//This is "normal" at this time, and will not cause any functional problems.
//Changes:
//Made nut size selectable in customizer, 19 mm or 21 mm.
//Set default clearance across flats default to 1.0 mm
//This is an easy place to fine tune the size if your printer makes opening a little too small, e.g.
//I recommend you first print just a couple of layers and then check the size, either with a new filter
//or with calipers.
//distance across points should be the nominal size, eg 65 mm + just a little clearance, maybe 0.5 mm so it fits snugly.

//V0.4
//Changes:
// Corrected the dimples module for() loop
// patched in my stronger mesh-in-mesh structure for the nut and finger grips.
// known issue: use of foo variable to wallow out hole is ugly
// values less than 0.2 mm result in non-manifold shape!
// This arises from use of rounded_box from MCAD/Shapes.scad
//
//V0.3 
//Changes:
//V0.3 added clearance parameter to let filter fit inside wrench (duh!)
//V0.4 added new internal structural supports to nut and finger grips.
//code is ugly. Sorry. It's a learning project and I've let it get away from me
//as I explored some new techniques I'm developing for multi-mesh structural supports.

/* [Size] */
//Diameter of round part of filter in mm
filterSize=65;//[65,74,76]
//How much clearance across flats? (mm)
ClearanceAF=1.0;//[0:0.1:2]
//Size of nut? (mm)
nutSize=19;//[12,13,15,17,19,21]
//Add Square Drive?
squaredrive=1; // [1:yes, 0:no]
//Customizer doesn't support booleans, thus the use of 0 or 1 choice here

/* [Hidden] */

mmPerInch=25.4;
squareDrive=(squaredrive==1 && (nutSize>=15));//3/8" drive will not fit smaller than 15mm nut

capWrench(diameter=filterSize, Clearance=ClearanceAF, nut=nutSize, squareDrive=squareDrive);
epsilon =   0.01;//to prevent ambiguous surfaces
bot_thk =   1.05; //amount of material, part of thickness, that is not impaled by the structures
    
module capWrench(diameter=74, Clearance=1,
                flutes=14, thickness=6.0, top=21,
                nut=19, squareDrive=true, eps=epsilon){
      
    r1=diameter/2+thickness;            //outer radius 
    r2=(diameter + Clearance*1.0257)/2; //inner radius
    color([.75,.75,.5])
         
                    
    //cap "socket" to fit filter
    //difference will not only cut the main opening, but also opens up the 
    //holes for inserting our fittings, the nut, and finger grips
    //these recesses will cause the slicer to generate wall structures extending under the surface for much greater strength
    difference(){
        cylinder(r=r1,h=top,$fn=flutes);//main solid body
        translate([0,0,-eps])
        cylinder(r=r2,h=top-thickness+eps,$fn=flutes);//interior opening
        translate([0,0,top-thickness-eps+bot_thk]) //Leave about 1mm of bottom (bt_thk)
        cylinder(r=nut*1.129/2+eps,h=thickness-bot_thk+2*eps,$fn=6); //make a hex shaped hole to fit the nut through for strength
        grips(length=griplen+2*eps, height=root+2*eps, width=grip_w+eps, root=root, gripr=grip_x-eps, gripz=grip_z-eps, strut=false);
        //grips hole is sized slightly larger than grips by amount eps
   }
    //now let's fill that hole back in with a hex mesh, not part of the cap
    color([0,0,0]) //just for troubleshooting. Makes it easier to visualize that it's correct.
    translate([0,0,top-thickness+bot_thk])
    cylinder(r=nut*1.129/2,h=thickness-bot_thk+eps,$fn=6); //sticks out the top by eps to join solidly with the rest of the nut that we add next
    
    //https://www.engineersedge.com/hardware/square-drive-tools.htm is the source for some of my dimensions below
    //I'm trying to use values that will work with any driver that is in-spec
    //nut on top for socket or 3/8" drive
    nut_thk=11.1;
    //specs for ratchet driver end length are 
    //10.3 to 11.1 mm 
    drv_hole=0.381*mmPerInch; //(just over 3/8")
    //specs are .378"-.383" min to max
    //first attempt at .375 was too small
    Df=0.215*mmPerInch;
    //Depth of center of dimple or hole for plunger
    //Specs are .209"-.221"
    Em=0.170*mmPerInch;
    //minimum diameter for the hole to receive plunger
    Fm=0.156*mmPerInch;
    //maximum plunger ball diameter
    rNut=nut*1.129*0.99/2;
    //undersize nut flats by 1% to allow for slight
    //printer variances. Standards typically allow about a 4% downward variance here. 
    //Also, the 1.129 factor
    //is to convert flat-flat dimension to full
    //circle dimension for hexagon
    translate([0,0,top-eps])
    difference(){
    //hexagonal nut
    color([.75,.75,.75])
    cylinder(r=nut*1.129/2,h=nut_thk,$fn=6);
        if(squareDrive){
        //minus a square hole for driver
        cube([drv_hole,
              drv_hole,
              2*nut_thk+eps],
              center=true);    
        //and some dimples to accept a plunger ball
        dimples(depth1=nut_thk-Df,
                depth2=drv_hole+Fm,
                radius=Em/2);
        }
    }
    //now lets add the grips
    //first adjust the size to fit our wrench and nut dimensions
    griplen=r1-thickness/2-nut/1.3;
    root=thickness-bot_thk;
    gripht=10;
    gripend=r1-thickness/2;
    grip_x=gripend-griplen; //center x position
    grip_z=top-root;
    grip_w=4;
    grips(length=griplen, width=grip_w, height=gripht, root=root, gripr=grip_x, gripz=grip_z);
}
module grips(length=15, height=10, root=5,strut=true, width=4, gripr=18, gripz=15.1){
    
   //use a loop to make 4 of these.
    for(a=[0:90:270]){
        color([.25,.25,.5])
        rotate([0,0,a]) //a is 0,90,180,270
        translate([gripr,0,gripz])
        {
    //root=how deep the grip extends below the surface
    eps=0.01; //distance to separate or overlap meshes
    rad=width/2; //radius of rounding cylinders
    cubex=length-2*rad; //x dimension of the base grip cube
    triht=height-eps; //triangular strut height
    tribase=height; //triangular foot length
    //our strut is a Right Triangle with base tribase and height triht
    //strut is shifted up by eps so it doesn't join the top
    //and is also shifted away from the grip by eps to keep it separate
    //first a finger grip with round ends
    translate([rad,-width/2,0]) //center on x axis and leave room for cylinder
    {
    cube([cubex,width,height+root]);
    for(x=[0:cubex:cubex]) //a cylinder on each end for nice round shape
        translate([x,rad,0])
        cylinder(r=rad,h=height+root,$fn=12);
    }
    //Now add a right triangular strut is desired
    if (strut) {
    translate([rad,rad+eps,root+eps]) //align with cube and separate by eps
    rotate([0,90,0]) //correct orientation
    linear_extrude(height = cubex) //strut is just as wide as the 'square' part of our grip
    polygon(points = [ [0,0], [-triht,0], [0, tribase]]); //simple right triangle positioned to extrude and easily rotate into position
    }
    
}




       }

    }


module dimples(height=5.639,depth=13.6,radius=2.16){
    /*generates a pair of perpendicular cylinders
    that module CapWrench() uses to etch out
    depressions to accept a ball bearing plunger to
    snap the ratchet or driver male end into
    The defaults are just initial base case values
    derived from my nut sizing choices and
    available driver and socket engineering data.
    */
    for(x=[[90,0,0],[0,90,0]]){
         //[90,0,0] and [0,90,0] rotations for two perpendicular cylinders that punch hols in the sides of the square hole
    translate([0,0,height])    
    rotate(x) //rotate 90 degrees through x first time, 90 degrees through y axis the second time
    cylinder(r=radius, h=depth, center=true,$fn=20);//the ends of the cylinders will extend into the sides of the square 
        //drive opening and be subtracted out.
    }
}
