var key_advance = keyboard_check_pressed(ord("E"));
var key_skip = keyboard_check(ord("X"));

var text = ds_list_create();
ds_list_add(text, "Despierta... Despierta... DESPIERTA!!");
ds_list_add(text, "La gente de esta tierra esta esperando a alguien como tu");
ds_list_add(text, "Confia en tus habilidades, eres muy capaz");
ds_list_add(text, "Estare vigilando y, llegado el momento, acudire en tu ayuda");
ds_list_add(text, "Siempre fuiste MI PRIMER HEROE");


draw_set_color(c_white);
draw_set_font(f_menu);
draw_set_halign(fa_center);
draw_text_scrolling(x+450, y+200,text,50,320,0.3,10,key_advance,key_skip,false);

