/// @description Insert description here
// You can write your code in this editor
image_speed = 0;

enum state {
	
	parado = player_iddle,
	caminando = player_walking,
	muriendo = player_dying,
	atacando = player_attacking

}


dir = "abajo"; // Dirección por defecto del personaje
estado = state.parado; // Estado por defecto
salida = -1; // Por defecto no salimos hacia ninguna room

crear_ataque = true; // Para crear el objeto ataque que permite realizarlo

global.debug = false;
vida = 2;
vida_maxima = 3;
monedas = 0;
puntos = 0;
llaves = 0;
llavesclave [0] = false;
llavesclave [1] = false;
llavesclave [2] = false;

