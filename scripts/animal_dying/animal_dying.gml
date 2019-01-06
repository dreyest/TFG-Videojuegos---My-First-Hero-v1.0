image_speed = 0.25;
image_blend = c_gray;
sprite_index = spr_animal1_abajo;



if (image_index >= image_number-1) {
	image_index = image_number-1;
//Efecto mover y desaparecer
	y -= 0.2;
	image_alpha = -1;
	if (image_alpha < 0)instance_destroy();
}