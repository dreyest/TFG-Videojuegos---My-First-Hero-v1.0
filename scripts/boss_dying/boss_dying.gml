image_speed = 0.5;
image_blend = c_gray;
sprite_index = spr_boss_herido_abajo;


if (image_index >= image_number-1) {
	image_index = image_number-1;
	
//Efecto mover y desaparecer
	audio_play_sound(jefe_caido,10,false);	
	Generar_Diamante(100);
	obj_player.puntos = obj_player.puntos + 10000;
	y -= 0.2;
	image_alpha = -1;
	if (image_alpha < 0) instance_destroy();
}