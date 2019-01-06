image_speed = 0.5;
image_blend = c_gray;
sprite_index = spr_caballero_herido_abajo;


if (image_index >= image_number-1) {
	image_index = image_number-1;
	
//Efecto mover y desaparecer
	audio_play_sound(grito_muerte_enemigo,10,false);
	Generar_Corazon(10); //10% de aparecer
	Generar_Moneda(40);  //40% de aparecer
	obj_player.puntos = obj_player.puntos + 200;
	y -= 0.2;
	image_alpha = -1;
	if (image_alpha < 0) instance_destroy();
}