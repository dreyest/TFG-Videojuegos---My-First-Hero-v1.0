image_speed = 1.4;


// En función de la dirección escogemos el sprite correspondiente

// Generamos el sprite ataque en el punto de ataque de la animación
animacion_ataque = image_index >= image_number-4 and crear_ataque;
switch(dir){
	
	case "abajo":		
		sprite_index = spr_caballero_atacar_abajo;
		if (animacion_ataque) instance_create_depth(x,y+64,-0,obj_soldadoattack);
		break;
	case "arriba":
		sprite_index = spr_caballero_atacar_arriba;
		if (animacion_ataque) instance_create_depth(x,y-64,0,obj_soldadoattack);
		break;
	case "izquierda":
		sprite_index = spr_caballero_atacar_izquierda;
		if (animacion_ataque) instance_create_depth(x-64,y+8,0,obj_soldadoattack);
		break;
	case "derecha":
		sprite_index = spr_caballero_atacar_derecha;
		if (animacion_ataque) instance_create_depth(x+64,y+8,0,obj_soldadoattack);
		break;
		
}

// Ya no atacará hasta el próximo ciclo
if (animacion_ataque) crear_ataque = false;


// Reiniciamos permitiendo el ataque
if (image_index >= image_number-1){
	
	crear_ataque = true;
	estado = ekn.parado;

}