/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum ekn{
	
	parado = knight_iddle,
	corriendo = knight_walking,
	atacando = knight_attacking,
	muriendo = knight_dying,
	herido = knight_hurt
	
}

dir = "abajo"; // Dirección por defecto en la que mira
estado = ekn.parado // Estado por defecto

vida = 5;
radio_vision = 150;
radio_ataque = 36;
crear_ataque = true;

