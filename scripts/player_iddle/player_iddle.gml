// Velocidad de animación inicial del sprite
image_speed = 0.80;

if (image_index == 0) image_index++;

// En función de la dirección escoge un sprite u otro
switch(dir){
	
	case "abajo":
		sprite_index = spr_parado_abajo;
		break;
	case "arriba":
		sprite_index = spr_parado_arriba;
		break;
	case "izquierda":
		sprite_index = spr_parado_izquierda;
		break;
	case "derecha":
		sprite_index = spr_parado_derecha;
		break;
		
}
