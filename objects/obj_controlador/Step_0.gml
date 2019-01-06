// SELECCIONA LA MUSICA DE CADA ZONA
if (global.current_music <> global.new_music)
{
  audio_stop_sound(global.current_music);
  audio_play_sound(global.new_music, 100, true);
  global.current_music = global.new_music
}
if (global.perdido == 1){
	
	audio_stop_all();
	
}else{
zona = room_get_name(room);
switch(zona){
	
	case "rm_cascada":
		zona = "La Cascada";
		break;
	case "rm_ciudad":
		zona = "La Ciudad";
		global.new_music = msc_ciudad;
		break;
	case "rm_campo":
		zona = "El Campo";
		global.new_music = msc_fondo;
		break;
	case "rm_taberna":
		zona = "La Taberna";
		break;
	case "rm_aventureros":
		zona = "La Hermandad";
		break;
	case "rm_mina":
		global.new_music = msc_mazmorra;
		zona = "Entrada de la Mina";
		break;
	case "rm_minainterior":
		zona = "Interior de la Mina";
		break;
	case "rm_minaextraccion":
		zona = "Zona de extraccion";
		break;
	case "rm_salajefe":
		zona = "Excavacion principal";
		global.new_music = msc_jefe;
		break;
		
}

if (keyboard_check_pressed(vk_escape)) {
	
	if (!pause) {
		pause = true;
		instance_deactivate_all(true);
		audio_pause_all();
	
	} else {
		
		pause = false;
		audio_resume_all();
		instance_activate_all();
		
	}
}	


		
				


if (global.final == 1){
	
		audio_stop_all();
		room_goto(rm_final);
		instance_destroy(obj_player);
		instance_destroy();
		
}
}