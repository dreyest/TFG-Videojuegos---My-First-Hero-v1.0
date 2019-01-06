//Asignamos una velocidad, un fundido, y el sprite de muerte
image_speed = 0.8;
image_blend = c_gray;
sprite_index = spr_morir;

//Asignamos el estado de perdido a la variable global para acabar la partida
if (image_index >= image_number-1){
	image_index = image_number-1;
	if (global.perdido == -1) global.perdido = 0;
}
