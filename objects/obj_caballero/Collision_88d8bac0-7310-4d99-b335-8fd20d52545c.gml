/// @description Insert description here
// You can write your code in this editor
/// @description Knockback and damage
var direc,knock;
knock = 60; //power of knockback
switch(dir){
	
	case "abajo":
		direc = point_direction(x,y,obj_player.x,obj_player.y)+180 mod 360; //direction of knocback
		break;
	case "arriba":
		direc = point_direction(x,y,obj_player.x,obj_player.y)+180 mod 360;//direction of knocback
		break;
	case "izquierda":
		direc = point_direction(x,y,obj_player.x,obj_player.y)+180 mod 360; //direction of knocback
		break;
	case "derecha":
		direc = point_direction(x,y,obj_player.x,obj_player.y)+180 mod 360;//direction of knocback
		break;
		
}


//Knockback
x += lengthdir_x(knock,direc);
y += lengthdir_y(knock,direc);

estado = ecab.parado;