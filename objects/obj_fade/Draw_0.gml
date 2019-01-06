//Inicio del Juego
if inicio{
	draw_set_color(c_black);
	draw_set_alpha(alpha);
	draw_rectangle(view_xport[0],view_yport[0],view_wport[0],view_hport[0],0);
		if (alpha>0.30){
			alpha = alpha-0.002;
			
		} else {
			inicio = false;
			instance_destroy();
		}
}


	



