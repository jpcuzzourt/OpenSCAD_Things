/* Customizable threaded pipe coupler
** I built this to make an extension on a dollar-store 
** flashlight. It used 3xAA batteries, and I wanted to use
** an 18650 instead. While adapters are readily available to
** fit around the 18650 cell to make it a larger diameter
** to fit where the 3 AA cells were, the particular
** flashlight body I had was too short to contain a 65mm cell.
** Its cell holder was only 52.5mm long leaving me in need
** of an additional 65-52.5 = 12.5mm
** My flashlight body is 22.7 mm ID and
** male thread OD is 25 mm with 2 mm pitch, 1 start, about 0.5mm thread height.
** Appear to be metric trapezoidal threads, with shallow threads.
** I need 5.5mm of female threads
** and 5.5mm of male threads + my 12.5 mm of length.
** so overall 5.5+5.5+12.5=23.5mm.
** Wall thickness varies between 1.0 to 1.4mm on the
** existing cap (9 corrugations for grip).
** I'm just going to use a 9-gon shape to make it match the tail cap somewhat and grip easily.
** For version 1 of this, I'm going to make it solve my problem
** but design it for folks on Thingiverse to adapt it easily to
** other purposes. 
** V1.0
** Uses the excellent BOSL library for creating the threads
** (Which means it won't work in Customizer, but just get the development version of OpenSCAD)
*/

/*[sizing]*/
Length   = 23.5; //overall length of coupler
OD       = 28.3; //Outside diameter of non-threaded section
ID       = 22.7; //Inside diameter of coupler
num_sides= 9;    //Number of sides

/*[Threads]*/
Thread_Dia      = 26.0;
Thread_Depth    = 0.5;
Thread_Len      = 5.5;
Thread_Pitch    = 2.0;

/*[Hidden]*/
eps=0.001; //used carefully below to ensure solid meshes when overlapping solids

include <BOSL/constants.scad>
use <BOSL/threading.scad>   //an easy to use threading library

flashlight_coupler(Length=Length, r1=OD/2, r2=ID/2, Thread_Len=Thread_Len, Thread_Pitch=Thread_Pitch,
                    Thread_Dia=Thread_Dia, Thread_Depth=Thread_Depth, num_sides=num_sides);

module flashlight_coupler(  Length=23.5,    //overall length
                            r1=14.15,       //outside radius
                            r2=11.35,       //inside radius
                            Thread_Len=5.5, //length of threaded ends
                            Thread_Pitch=2, //pitch of threads
                            Thread_Dia=25,
                            Thread_Depth=0.5,
                            num_sides=9,    //outer cylinder n-ogon "n"
                            smooth=96       //number of sides for a "smooth" cylinder
                            )
    {  difference(){
           union()                              //build from bottom up
           {                                    cylinder(r=r1, h=Thread_Len,$fn=smooth);
            translate([0,0,Thread_Len-eps])     cylinder(r=r1, h=2*eps+Length-2*Thread_Len,$fn=num_sides);
            translate([0,0,Length-Thread_Len])  
            trapezoidal_threaded_rod(d=Thread_Dia, l=Thread_Len, pitch=Thread_Pitch,
                                     thread_depth=Thread_Depth, thread_angle=15, center=false, $fn=32);
           }
            translate([0,0,-eps])
            cylinder(r=r2, h=Length+2*eps, $fn=smooth); //bore the inside out smooth
            translate([0,0,-eps])
            trapezoidal_threaded_rod(d=Thread_Dia, l=Thread_Len+eps, pitch=Thread_Pitch, center=false,
                                     thread_depth=Thread_Depth, thread_angle=15, internal=true, $fn=32);
       }
    }
    

