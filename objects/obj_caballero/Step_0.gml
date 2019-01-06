// INICIALIZACIÓN DE MOVIMIENTO

depth = -y;
vv = 0;
vh = 0;
v = 1;

// GENERAR MOVIMIENTO DEPENDIENDO DEL JUGADOR



// Le seguimos

if (distance_to_point(obj_player.x,obj_player.y) < radio_vision){
	vh = sign(obj_player.x-x) * v;
	vv = sign(obj_player.y-y) * v;
} else { 
	// Si se aleja vuelve a la posición inicial
	vh = sign(xstart-x) * v;
	vv = sign(ystart-y) * v;
}

// GESTIÓN DE ESTADO DE MOVIMIENTO, DIRECCIÓN Y MUERTE

if (vv > 0) dir = "abajo";
else if (vv < 0 ) dir = "arriba";
else if (vh > 0 ) dir = "derecha";
else if (vh < 0 ) dir = "izquierda";

// Si no estamos atacando comprobamos estados parado y caminando

if (estado != ekn.atacando){
	if (dir != "") estado = ekn.corriendo;
	if (vh == 0 and vv == 0) estado = ekn.parado;
} else {

// Y si estamos atacando nos paramos
	vh = 0;
	vv = 0;
}	
	// Arreglar dirección solo si atacamos
	
//grados = point_direction(x,y,obj_player.x,obj_player.y);
//if (grados < 45 or grados > 315) dir = "derecha";
//else if (grados >= 45 or grados < 135) dir = "arriba";
//else if (grados >= 135 and grados < 225) dir = "izquierda";
//else if (grados >= 225 and grados <= 315) dir = "abajo";


//Comprobar vida y muerte

if (vida <= 0){	
	estado = ekn.muriendo;
	colision = false;
	vh = 0;
	vv = 0;
}


//GESTIÓN DE ATAQUES

if (distance_to_point(obj_player.x,obj_player.y) < radio_ataque and estado != ekn.atacando and estado != ekn.muriendo) {
	//Atacar si no estamos atacando y reiniciar la animación
	estado = ekn.atacando;
	audio_play_sound(tajo1,1,false);
	audio_play_sound(choose(grito_enemigo1,grito_enemigo2,grito_enemigo3,grito_enemigo4),5,false);
	image_index = 0;
}

//GESTIÓN DE COLISIONES CONTRA PAREDES Y OBJETOS INTERACTIVOS

if (instance_place(x+vh,y,obj_colision)){
	vh=0;
}

if (instance_place(x,y+vv,obj_colision)){
	vv=0;
}

 // Colisión horizontal con objetos interactivos
 
 interactivo = instance_place(x+vh,y,obj_interactivo);
 if(interactivo) {
	 if(interactivo.colision == true){
		 vh = 0;
	 }
 }
 
 // Colision vertical con objetos interactivos
 
 interactivo = instance_place(x,y+vv,obj_interactivo);
 if(interactivo) {
	 if(interactivo.colision == true){
		 vv = 0;
	 }
 }
 

// Establecer movimiento final y estado

x += vh;
y += vv;

script_execute(estado);


