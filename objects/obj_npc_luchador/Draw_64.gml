
//Comprobar si el jugador está cerca
if(mostrar){
	draw_sprite(spr_npc_textbox,0,485,565);
	draw_sprite(spr_npc_facebox,0,300,565);
	draw_sprite(spr_cara_luchador,0,400,660);
	draw_set_font(f_enemigos);
	draw_set_color(c_red);
	draw_text(600,720,"PRESIONA 'E' PARA CONTINUAR...");
	draw_set_font(f_enemigos);
	draw_set_color(c_black);
	draw_text(530,600,string(nombre))
	draw_set_font(f_enemigos);
	draw_set_halign(fa_left);
	draw_set_color(c_gray);
	draw_text_ext(530,630,paginas[pagina], 30, 400);
	draw_set_color(c_black);
	draw_text_ext(529,630,paginas[pagina], 30, 400);
}