/// @description Insert description here
// You can write your code in this editor
if(keyboard_check_pressed(ord("E")) and distance_to_object(obj_player)<10){
	if (llavedada == false){
		obj_player.llaves++;
		audio_play_sound(llave_recogida,3,false);
		msjaper = true;
		llavedada = true;
		obj_player.llavesclave[pos] = true;
	}	
		
}

if (msjaper and keyboard_check_pressed(ord("R"))){
	
	instance_change(obj_cofreabierto,false);
	
}