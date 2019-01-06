//Detectar si el jugador abre la puerta

if(keyboard_check_pressed(ord("E")) and distance_to_object(obj_player)<10){
	mostrar = true;
}


// Si nos alejamos se cierra el cartel

if (distance_to_object(obj_player)>30){
	mostrar = false;
	pagina = -1;
}

// Detectar si el jugador pasa pagina

if (keyboard_check_pressed(ord("E")) and mostrar) {
	
	//Pasamos pagina
	if (pagina+1 < array_length_1d(paginas)) pagina++;
	else {
		// Si nos pasamos del máximo reiniciamos el cartel
		mostrar = false;
		pagina = -1;
	}
}	

if ((keyboard_check_pressed(ord("E"))) and (distance_to_object(obj_player)<10) and (obj_player.llavesclave[pos])){
	obj_player.llaves--;
	audio_play_sound(apertura_puerta,5,false);
	instance_destroy();
	
}