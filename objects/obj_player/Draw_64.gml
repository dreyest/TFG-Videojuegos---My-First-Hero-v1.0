/// @description Insert description here
// You can write your code in this editor
if (global.debug){
	
	draw_set_font(f_Debug);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	draw_set_alpha(0.5);
	draw_rectangle(0,0,270,75,false);
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_text(2,2,"FPS/FPS REAL: " + string(fps)+"/"+string(fps_real));
	draw_text(2,20, "ESTADO: " + script_get_name(estado));
	draw_text(2,38, "SPRITE: " + sprite_get_name(sprite_index));
	draw_text(2,56, "IMAGE INDEX: " + string(image_index));
	

}

