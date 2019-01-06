/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum ec {
	parado = animal_iddle,
	corriendo = animal_walking,
	muriendo = animal_dying
}

dir = "abajo";
estado = ec.parado;
vida = 1;

dx = -1;
dy = -1;

alarm[0] = room_speed * choose(1,2,3);