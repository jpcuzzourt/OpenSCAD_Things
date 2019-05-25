/*Spool.scad 5/23/2019 by JP Cuzzourt
Please see accompanying license

Note
*/

/*[Part Selection] */ 
//Which parts and layout to produce
part="E";          //[All:all to print,A:Spool A, B:Spool B, C:Cover, D:Guard, E:Assembled]
/*[Sizing]*/
//radius of spool
Spool_R=46.5;    
//radius of spool center hole
Hub_IR=26.5;    
//radius of spool hub
Hub_OR=27.5;    
//height of spool hub
Hub_HT=20;      
//clearance between hub between part A and part B
Hub_Clr=0.2;    
//radius of large holes around spool
Ring_Hole_R=7;    
//radius of filament holes
Fil_Hole_R=2;   
//clearance between spool and cover
Cover_Clr=1;    
//Thickness of cover bottom
Cov_Bot_Thk=0.75;
//Thickness of round sides of cover
Cov_Wal_Thk=1.00;

render()       //render() makes it so Thingiverse doesn't show the preview artifacted version
do_parts(part);


module do_parts(part){
if (part=="All"){
    translate([-46.5,-46.5])//for all print
    spool_A(); }
if(part=="E")
    translate([0,0,Cov_Bot_Thk+25])//for assembled preview for Thingiverse default
    spool_A();
if(part=="A")
    spool_A();

if (part=="All")
    translate([46.5,46.5]) //for all print
    spool_B();
if (part=="E")
    translate([0,0,Hub_HT+26])
    rotate([180,0,0])
    spool_B();
if (part=="B")
    spool_B();
/*
if (part=="All")Cover is deprecated in favor of guard for ALL and Assembled
    //translate([-49,49]) //for all print
    //cover(); 
if ((part=="C")||(part=="E"))
*/
if (part=="C")
    cover();

if (part=="All")
    translate([49,-49]) //for all print
    guard();
if ((part=="D")||(part=="E"))
    guard();
   
}

module guard(){
     difference(){
        cylinder(r=Spool_R+Cover_Clr+Cov_Wal_Thk,  h=Hub_HT+2, $fn=96); //outer shell
          
        cylinder(r=Spool_R+Cover_Clr,h=Hub_HT+2, $fn=96); //scoop out
        translate([0,0,(Hub_HT+2)/2])
        rotate([90,0,30])//30 deg rotation offsets oval so it isn't lined up with tabs
        scale([0.66,1,1])
        cylinder(r=Hub_HT/3, h=Spool_R*2+10,center=true); //make oval filament windows      
    }
    translate([0,0,Hub_HT+1])
    tabs(r=Spool_R+Cover_Clr);//tabs to clip the spool inside
    tabs(r=Spool_R+Cover_Clr);
}
module cover()  {
    difference(){
        union(){
        cylinder(r=Spool_R+Cover_Clr+Cov_Wal_Thk,  h=Hub_HT+2, $fn=96); //outer shell
        translate([0,0,Hub_HT])
        tabs(r=Spool_R+Cover_Clr);//tabs to clip the spool inside
        }
    translate([0,0,Cov_Bot_Thk])
    cylinder(r=Spool_R+Cover_Clr,h=Hub_HT+2, $fn=96); //scoop out
    translate([0,0,(Hub_HT+2)/2])
    rotate([90,0,0])
    scale([0.66,1,1])
    cylinder(r=Hub_HT/3, h=Spool_R*2+10,center=true); //make oval filament window
    translate([0,0,-5])
    cylinder(r=Hub_IR,h=10, $fn=64); //hole for a hub
    //this really has more plastic in it than we need, so let's cut some out
    holes();        
    }
    translate([0,0,Hub_HT+1])
    tabs(r=Spool_R+Cover_Clr);//tabs to clip the spool inside

}

module tabs(r){
    //first a thin ring around the open edge, and then we take most of it away.
    difference(){
        cylinder(r=r+1,h=1);
        cylinder(r=r-3*Cover_Clr,h=1);
        for(a=[0:60:300]){
            rotate([0,0,a])
            translate([r,0,0])
            cylinder(r=20);
        }
    }
}
module spool_B(){
        difference(){
            union(){
                cylinder(r=Spool_R,         h=1, $fn=64);
                cylinder(r=Hub_OR+1,        h=2, $fn=64);
            }
                cylinder(r=Hub_OR+Hub_Clr,  h=2, $fn=64);
            holes();
    }
}

module spool_A(){
        difference(){
            union(){
                cylinder(r=Spool_R, h=1, $fn=64);
                cylinder(r=Hub_OR,  h=Hub_HT, $fn=64);
            }
                cylinder(r=Hub_IR,  h=Hub_HT, $fn=64);
            holes();
    }
}
module holes(){
    for(a=[0:30:330]){ 
        rotate([0,0,a])
        translate([0,36.5])
        cylinder(r=Ring_Hole_R, h= 4, center=true);
    }
    for(a=[0:90:270]){ 
        rotate([0,0,a-15])
        translate([0,31])
        cylinder(r=Fil_Hole_R, h= 4, center=true);
    }
}

