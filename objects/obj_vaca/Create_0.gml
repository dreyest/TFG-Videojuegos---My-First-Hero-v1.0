/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum evac {
	parado = animal_iddle2,
	corriendo = animal_walking2,
	muriendo = animal_dying2
}

dir = "abajo";
estado = evac.parado;
vida = 1;

dx = -1;
dy = -1;

alarm[0] = room_speed * choose(1,2,3);