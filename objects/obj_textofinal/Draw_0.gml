var key_advance = keyboard_check_pressed(ord("E"));
var key_skip = keyboard_check(ord("X"));

var text = ds_list_create();
ds_list_add(text, "Bien hecho!!");
ds_list_add(text, "Has dado tu primer paso");
ds_list_add(text, "Pero no sera el ultimo");
ds_list_add(text, "Damaris necesitara tu ayuda y, yo tambien");
ds_list_add(text, "Es hora de despertar de nuevo...");


draw_set_color(c_white);
draw_set_font(f_menu);
draw_set_halign(fa_center);
draw_text_scrolling(x+50, y+25,text,50,320,0.3,10,key_advance,key_skip,false);

