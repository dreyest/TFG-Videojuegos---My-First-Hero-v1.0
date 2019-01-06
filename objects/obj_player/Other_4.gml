/// @description Insert description here
// You can write your code in this editor
// CAMBIAR A LA ROOM
if (salida!= -1){
	with (obj_salida){
		if (other.salida == nombre){
			other.x = x;
			other.y = y;
			other.salida = -1;
		}
	}
}