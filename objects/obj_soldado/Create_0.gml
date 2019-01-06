/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum es {
	
	parado = soldier_iddle,
	corriendo = soldier_walking,
	atacando = soldier_attacking,
	muriendo = soldier_dying,
	herido = soldier_hurt
	
}

dir = "abajo"; // Dirección por defecto en la que mira
estado = es.parado // Estado por defecto

vida = 3;
radio_vision = 150;
radio_ataque = 24;
crear_ataque = true;

