image_speed = 0.80;

if (image_index == 0) image_index++;

switch(dir){
	
	case "abajo":
		sprite_index = spr_soldado_abajo;
		break;
	case "arriba":
		sprite_index = spr_soldado_arriba;
		break;
	case "izquierda":
		sprite_index = spr_soldado_izquierda;
		break;
	case "derecha":
		sprite_index = spr_soldado_derecha;
		break;
		
}