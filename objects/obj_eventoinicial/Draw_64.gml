/// @description Insert description here
// You can write your code in this editor
if(global.contacto){
	draw_sprite(spr_npc_textbox,0,485,565);
	draw_sprite(spr_npc_facebox,0,300,565);
	draw_sprite(spr_cara_anciano,0,400,660);
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
	
	//DIBUJAR CONTROLES
	draw_sprite(spr_HUD_controles,0,300,50);
	draw_set_font(f_controles);
	draw_set_color(c_black);
	draw_text(480,90,"CONTROLES");
	draw_text(575,180,"MOVIMIENTO");
	draw_text(575,220,"+ [SHIFT]");
	draw_text(575,260,"PARA CORRER");
	draw_text(600,336,"ESPACIO");
	draw_text(650,430,"E");
	draw_sprite(spr_flecha_arriba,0,450,200);
	draw_sprite(spr_flecha_abajo,0,450,264);
	draw_sprite(spr_flecha_izquierda,0,386,264);
	draw_sprite(spr_flecha_derecha,0,514,264);
	draw_sprite(spr_atacar,0,450,360);
	draw_sprite(spr_hablar,0,418,456);
	draw_sprite(spr_usar,0,482,456);
}