/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(ord("E")) and global.contacto) {
	
	//Pasamos pagina
	if (pagina+1 < array_length_1d(paginas)){ 
		pagina++;
		audio_play_sound(pasar_pagina,3,false);
	} else {
		// Si nos pasamos del máximo reiniciamos el cartel
		if (pagina == 9){
		obj_player.llavesclave[0] = true;
		obj_player.llaves++;
		audio_play_sound(llave_recogida,3,false);
		}
		
		instance_destroy();
		
		
		
	}
}	