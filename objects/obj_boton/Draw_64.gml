/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center); 
draw_set_font(f_menu);
draw_set_color(c_white);
draw_text(x-5,y-10,texto);
if entrada {
	
	draw_set_color(c_red);
	draw_text(x-5,y-10,texto);
	
} else {
	
	draw_set_color(c_white);
	draw_text(x-5,y-10,texto);

}
