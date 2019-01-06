/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

enum eboss{
	
	parado = boss_iddle,
	corriendo = boss_walking,
	atacando = boss_attacking,
	muriendo = boss_dying,
	herido = boss_hurt
	
}

dir = "abajo"; // Dirección por defecto en la que mira
estado = eboss.parado // Estado por defecto

vida = 10;
radio_vision = 350;
radio_ataque = 36;
crear_ataque = true;

