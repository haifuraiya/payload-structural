//Busek BIT-3
//1.6U ultra-lightweight structural chassis
//datasheet http://www.busek.com/index_htm_files/70010819F.pdf

//parameters
bit3_x = 180;
bit3_y = 88;
bit3_z = 102;
bit3_thruster_radius = 30;

difference(){
    //envelope of BIT-3
    cube([bit3_x,bit3_y,bit3_z]);
    //thruster appears to be centered and 1/3 of the width
    translate(v = [bit3_x/2, bit3_y/2, bit3_z/2]) //centered in x and z
    {
    rotate([90,0,0]) //rotate thruster subtraction cylinder
    cylinder(bit3_y, (bit3_thruster_radius), (bit3_thruster_radius), false); 
        //cylinder is: height, radius top, radius bottom, centered?
    }
   
};