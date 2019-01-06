/// @description Insert description here
// You can write your code in this editor
if(msjaper){
	draw_sprite(spr_HUD_texto,0,500,300)
	draw_set_font(f_enemigos);
	draw_set_halign(fa_left);
	draw_set_color(c_gray);
	draw_text_ext(350,240,texto, 40, 300);
	draw_set_color(c_black);
	draw_text_ext(349,240,texto, 40, 300);
	draw_set_color(c_red);
	draw_text(345,355,"PRESIONA 'R' PARA CERRAR...");
}