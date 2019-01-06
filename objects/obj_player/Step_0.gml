// Inicialización de velocidades

vv= 0;
vh= 0;
v = 4;
vr = 6;
depth = -y;

// Ajuste de Velocidades

if (keyboard_check(vk_shift)){
	
	image_speed = 1.60;
	vh= (-keyboard_check(vk_left) + keyboard_check(vk_right)) * vr;
	vv= (-keyboard_check(vk_up) + keyboard_check(vk_down)) * vr;

}else{
	
	image_speed = 0.80;
	vh= (-keyboard_check(vk_left) + keyboard_check(vk_right)) * v;
	vv= (-keyboard_check(vk_up) + keyboard_check(vk_down)) * v;

}



// GESTIÓN DEL MOVIMIENTO

//Determinar dirección

if (vv > 0) dir = "abajo";
else if (vv < 0 ) dir = "arriba";
else if (vh > 0 ) dir = "derecha";
else if (vh < 0 ) dir = "izquierda";


// Si no estamos atacando comprobamos si estamos parados o caminando

if (estado != state.atacando){
	
	// Si existe dirección establecemos el estado caminar

	if (dir != "") estado = state.caminando;

	// Si no nos movemos nos quedamos parados

	if (vh == 0 and vv==0) estado = state.parado;

} else {
	
	vh = 0;
	vv = 0;
}


// GESTION DE ATAQUE

if (keyboard_check_pressed(vk_space) and estado != state.atacando){
	
	estado = state.atacando;
	audio_play_sound(tajo1,10,false);
	audio_play_sound(choose(grito1,grito2,grito3,grito4),5,false);
	image_index = 0;
	
}


// GESTION DE MUERTE

if (vida <= 0) {
	estado = state.muriendo;
	vh = 0;
	vv = 0;
	global.new_music = msc_gameover;
}



// GESTIÓN DE COLISIONES

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
 
 // Colisión horizontal con objetos evento
 
 evento = instance_place(x+vh,y,obj_event);
 if(evento) {
	 if(evento.colision == true){
		 vh = 0;
		 global.contacto = true;
	 }
 }
 
 // Colision vertical con objetos evento
 
 evento = instance_place(x,y+vv,obj_event);
 if(evento) {
	 if(evento.colision == true){
		 vv = 0;
		 global.contacto = true;
	 }
 }

 // Colision contra corazones ,monedas y diamante
 corazon = instance_place(x+vh,y+vv,obj_corazon);
 if (corazon) {
	 audio_play_sound(snd_corazon,10,false);
	 vida = clamp(vida+1,0,vida_maxima);
	 with (corazon) instance_destroy();
 }

 moneda = instance_place(x+vh,y+vv,obj_moneda);
 if (moneda) {
	 monedas ++;
	 puntos = puntos + 10;
	 audio_play_sound(snd_moneda,10,false);
	 with (moneda) instance_destroy();
 }
 diamante = instance_place(x+vh,y+vv,obj_diamante);
 if (diamante) {
	 global.final = 0;
	 puntos = puntos + 10000;
	 audio_play_sound(diamanteconseguido,10,false);
	 with (diamante) instance_destroy();
 }

// Cambio de room

entrada = instance_place(x,y,obj_entrada);
with (entrada) {
	if (room_exists(mapa)){
		other.salida = salida;			
		room_goto(mapa);
	}else{
		show_message("No existe la room: " + entrada.mapa);
	}
}
	


x += vh;
y += vv;

script_execute(estado);

