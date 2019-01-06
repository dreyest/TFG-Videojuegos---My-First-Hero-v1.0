depth = -y;
vv = 0;
vh = 0;
v = 2;

if (dx != -1 and dy != -1){
	vh = sign(dx-x) * v;
	vv = sign(dy-y) * v;
}

if (distance_to_point(dx,dy) < v){
	vh = 0;
	vv = 0;
}

if (vv > 0) dir = "abajo";
else if (vv < 0 ) dir = "arriba";
else if (vh > 0 ) dir = "derecha";
else if (vh < 0 ) dir = "izquierda";

if (dir != "") estado = ecab.corriendo;
if (vh == 0 and vv == 0) estado = ecab.parado;

if (vida <=0) {
	colision = false;
	estado = ecab.muriendo;
	vh = 0;
	vv = 0;
}

// GESTIÓN DE COLISIONES

if (instance_place(x+vh,y,obj_colision)){
	vh=0;
	dx=x;
}

if (instance_place(x,y+vv,obj_colision)){
	vv=0;
	dy=y;
}

 // Colisión horizontal con objetos interactivos
 
 interactivo = instance_place(x+vh,y,obj_interactivo);
 if(interactivo) {
	 if(interactivo.colision == true){
		 vh = 0;
		 dx = x;
	 }
 }
 
 // Colision vertical con objetos interactivos
 
 interactivo = instance_place(x,y+vv,obj_interactivo);
 if(interactivo) {
	 if(interactivo.colision == true){
		 vv = 0;
		 dy = y;
	 }
 }
 
 x += vh;
 y += vv;
 script_execute(estado);
 