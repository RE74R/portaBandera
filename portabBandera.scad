diametroPalo=10;
alturaPalo=1000;
rP=diametroPalo/2;
n=5;
$fn=90;

translate ([-65,0,1.68])
scale(0.7)
linear_extrude(0.28)
import("GIDUCM_logo.svg");

propuesta=1;

if(propuesta==1){
difference(){

for (i=[0:n-1]){
    hull(){
        cylinder(h=50,r=rP+5);    
            xRyRzR=rands(-50,50,2);
            translate(xRyRzR)
            cylinder(h=1,r=5);
        echo(xRyRzR);
    }  
}


translate([0,0,alturaPalo/2+2])
cylinder(h=1000,r=rP+0.5, center=true);
}
hull(){
rotate_extrude(angle=360, convexity=2)
translate([70,0,0])
circle(0.84);
}
}


if(propuesta==2){
difference(){
cylinder(h=50,r=rP+5); 

translate([0,0,alturaPalo/2+2])
cylinder(h=1000,r=rP+0.5, center=true);
}
cylinder(h=1.68,r=75);
}


