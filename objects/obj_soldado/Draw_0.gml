// DEBUG
draw_self();
draw_set_alpha (0.15);
draw_set_color (c_red);
draw_circle(x,y,radio_vision+5,false);
draw_circle(x,y,radio_ataque+5,false);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(x,y+50,string(vida));


