
//Comprobar si el jugador está cerca
if(mostrar){
	draw_sprite(spr_HUD_texto,0,500,300)
	draw_set_font(f_zona);
	draw_set_halign(fa_left);
	draw_set_color(c_gray);
	draw_text_ext(350,240,paginas[pagina], 40, 300);
	draw_set_color(c_black);
	draw_text_ext(349,240,paginas[pagina], 40, 300);
}