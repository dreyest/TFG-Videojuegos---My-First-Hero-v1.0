/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum ecab {
	parado = animal_iddle1,
	corriendo = animal_walking1,
	muriendo = animal_dying1
}

dir = "abajo";
estado = ecab.parado;
vida = 1;

dx = -1;
dy = -1;

alarm[0] = room_speed * choose(1,2,3);