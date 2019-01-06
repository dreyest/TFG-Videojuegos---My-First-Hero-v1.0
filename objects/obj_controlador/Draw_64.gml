draw_set_alpha(1);


// Menu de Pausa
draw_set_halign(fa_left);
draw_set_halign(fa_bottom);
if (pause) {
	draw_set_color(c_black);
	draw_set_alpha(0.60);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
	draw_set_font(f_enemigos);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text(600, 325, "Juego en Pausa");
	draw_text(750, 400, "Presiona 'ESC' de nuevo para volver al juego");
	draw_text(765, 450, "Presiona 'Enter' para volver al menu principal");
} else {

//Dibujar el HUD
draw_sprite(spr_HUD_barra,0,167,700);
//draw_sprite(spr_HUD_texto,0,300,300);
draw_sprite(spr_moneda,0,68,665);

//Dibujar los corazones de vida

if (object_exists(obj_player)){
	for (i=0; i<obj_player.vida; i++) draw_sprite(spr_vida,0,235+i*40,745);
}

// Dibujar el número de monedas
if (object_exists(obj_player)){
	draw_set_color(c_yellow);
	draw_set_font(f_monedas);
	draw_set_halign(fa_left);
	if (obj_player.monedas >9){
		
		draw_text(72,705,string(obj_player.monedas));
		
	} else {
		draw_text(82,705,string(obj_player.monedas));
	}
}

//Dibujar las llaves

if (object_exists(obj_player)){
	for (i=0; i<obj_player.llaves; i++) draw_sprite(spr_llave,0,170+i*40,720);
}


// Dibujar el nombre de la zona
draw_sprite(sprite96,0,167,610);
draw_set_color(c_black);
draw_set_font(f_zona);
draw_set_halign(fa_left);
draw_text(46,595,string_upper(zona));
draw_set_color(c_white);
draw_set_font(f_zona);
draw_set_halign(fa_left);
draw_text(44,595,string_upper(zona));


// Dibujar la puntuación
draw_set_color(c_black);
draw_set_font(f_zona);
draw_set_halign(fa_left);
draw_text(46,35,"PUNTUACION: " +string_upper(obj_player.puntos));
draw_set_color(c_yellow);
draw_set_font(f_zona);
draw_set_halign(fa_left);
draw_text(44,35,"PUNTUACION: " +string_upper(obj_player.puntos));

// Pantalla de derrota

if (global.perdido >= 0){
	global.perdido = clamp(global.perdido+0.005,0,1);
	draw_set_alpha(global.perdido);
	draw_set_color(c_black);
	draw_rectangle(0,0,view_wview,view_hview,false);
	draw_sprite(spr_gameover,0,x+400,y-350);
	draw_set_color(c_white);
	draw_set_font(f_menu);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
}



if (global.final >=0){
	draw_set_alpha(global.final);
	global.final = clamp(global.final+0.005,0,1);
	draw_set_color(c_black);
	draw_rectangle(0,0,view_wview,view_hview,false);
			
}


}