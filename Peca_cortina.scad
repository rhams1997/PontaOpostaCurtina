use <BOSL/masks.scad>

union(){
   cubo_Principal();
    //cubo_DeixaOco();
    cilindro_Suporte();
    suporte_Corda();
}

module cubo_Principal(){
    difference(){
        cube([56,10,28]);
        cubo_DeixaOco();
        suporte_Corda_DeixaOco();
        arredondaDireita();
        arredondaEsquerda();
    }     
}

module arredondaDireita(){
    translate([64,5,13]){
        rotate([90,309,180]){
        #fillet_angled_edge_mask(h=90, r=20.0, ang=90, $fn=32);
        }
    }
    translate([55.5,0,28]){
    rotate([-1,90,90]){
        #fillet_angled_edge_mask(h=30, r=7.0, ang=90, $fn=32);
    }
    }
    //
    translate([0.5,0,28]){
    rotate([1,90,90]){
        #fillet_angled_edge_mask(h=35, r=8.0, ang=90, $fn=32);
    }
    }
    //
    translate([0.5,0,0.5]){
    rotate([1,270,270]){
        #fillet_angled_edge_mask(h=35, r=8.0, ang=90, $fn=32);
    }
    } 
}

module arredondaEsquerda(){
    translate([-8,5,13]){
        rotate([90,230,180]){
        #fillet_angled_edge_mask(h=90, r=20.0, ang=90, $fn=32);
        }
    }
    //
    translate([56,0,5]){
    rotate([90,130,180]){
        #fillet_angled_edge_mask(h=90, r=20.0, ang=90, $fn=32);
    }
    }
    
}
    

module cubo_DeixaOco(){
    difference(){
    translate([3,1,1]){
        color("blue")
        cube([50,11,26]);
    }
    //
    translate([-7,5,13]){
        rotate([90,230,180]){
        #fillet_angled_edge_mask(h=90, r=20.0, ang=90, $fn=32);
        }
    }
    //
    translate([63,5,13]){
        rotate([90,309,180]){
        #fillet_angled_edge_mask(h=90, r=20.0, ang=90, $fn=32);
        }
    }
    //
}

}
//cubo_DeixaOco();
//
module cilindro_Suporte(){
    difference(){
translate([45,9,6]){
rotate([90, 0, 0])
    color("blue")
cylinder(h = 16,d= 8, center = true, $fn=100);
}
cilindro_Suporte_Oco();
}
}

module cilindro_Suporte_Oco(){
translate([45,9,6]){
rotate([90, 0, 0])
    color("red")
cylinder(h = 17,d= 6, center = true, $fn=100);
}
}
//

module suporte_Corda(){
    difference(){
translate([7,0,2]){
color("red")
cube([13,10,8]);
}
suporte_Corda_DeixaOco();

}
}

module suporte_Corda_DeixaOco(){
translate([7.5,-1,2.5]){
//color("red")
cube([12,15,7]);
    
}
}

module cubo_SuporteCorda(){
    difference(){
translate([7,0,2]){
    color("red")
    cube([13,10,8]);
}
deixaOco_Cilindro();
}
}

cubo_SuporteCorda();
module deixaOco_Cilindro(){
translate([8,5,6]){
rotate([90, 0, 0])
    color("blue")
cylinder(h = 17,d= 6, center = true, $fn=100);
}
//
translate([19,5,6]){
rotate([90, 0, 0])
    color("blue")
cylinder(h = 17,d= 6, center = true, $fn=100);
}
//
translate([14,1,6]){
rotate([0, 90, 0])
    color("red")
cylinder(h = 14,d= 6.32, center = true, $fn=100);
}
translate([14,10,6]){
rotate([0, 90, 0])
    color("red")
cylinder(h = 14,d= 6.32, center = true, $fn=100);
}
}


