//Example shape to put standoffs on
cube([100,150,10]);

//Standoff module
module standoff(height, diameter, holediameter, firstTX, firstTY, firstTZ, pcbWidth, pcbLength, fn=25){
    //Standoff 1
    difference(){
        translate([firstTX, firstTY, firstTZ])
            cylinder(h=height, d=diameter, $fn = fn);
        
        translate([firstTX, firstTY, firstTZ])
            cylinder(h=height, d=holediameter, $fn = fn);
    }
    //Standoff 2
    difference(){
        translate([firstTX+pcbWidth, firstTY, firstTZ])
            cylinder(h=height, d=diameter, $fn = fn);
        
        translate([firstTX+pcbWidth, firstTY, firstTZ])
            cylinder(h=height, d=holediameter, $fn = fn);
    }
    //Standoff 3
    difference(){
        translate([firstTX, firstTY+pcbLength, firstTZ])
            cylinder(h=height, d=diameter, $fn = fn);
        
        translate([firstTX, firstTY+pcbLength, firstTZ])
            cylinder(h=height, d=holediameter, $fn = fn);
    }
    //Standoff 4
    difference(){
        translate([firstTX+pcbWidth, firstTY+pcbLength, firstTZ])
            cylinder(h=height, d=diameter, $fn = fn);
        
        translate([firstTX+pcbWidth, firstTY+pcbLength, firstTZ])
            cylinder(h=height, d=holediameter, $fn = fn);
    }
}

//Example use of module
standoff(
     height = 3
    ,diameter = 5
    ,holediameter = 2
    ,firstTX = 10
    ,firstTY = 10
    ,firstTZ = 10
    ,pcbWidth = 25
    ,pcbLength = 50
    ,fn = 25
);
