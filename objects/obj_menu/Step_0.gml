//draw_set_halign(fa_center); 
//draw_set_valign(fa_middle);  

if(!audio_is_playing(msc_menu)){
	audio_play_sound(msc_menu,0,true);
}

            switch(selec)   {
                case 0:
                    room_goto(rm_presen); //menu[0]
					audio_stop_sound(msc_menu);
                break;
				
                case 1: //menu[1] 
				instance_create_depth(950,600,0,obj_volver);
				
                break;
				
                case 2: //menu[2]
				game_end(); //menu[4]
                break;
               
               
            }
        

  