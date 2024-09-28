function draw_custom_button_ext(x,y,buttonspr, imgIndex , customTXT){
	
	if point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_get_width(buttonspr),y+sprite_get_height(buttonspr)){draw_sprite_ext(buttonspr,imgIndex,x,y,1,1,0,c_ltgrey,1)}
	else{draw_sprite(buttonspr,imgIndex,x,y)}
	
	if customTXT!=""{
		draw_set_color(c_white)
		draw_set_halign(fa_left)
		draw_set_valign(fa_center)
		draw_set_font(fn_default)
		draw_text(x+96,y+sprite_get_height(buttonspr)/2,customTXT)
		draw_set_halign(fa_left)
		draw_set_valign(fa_top)
		draw_set_color(c_white)
	}
	
	if mouse_check_button_released(mb_any) and point_in_rectangle(mouse_x,mouse_y,x,y,x+sprite_get_width(buttonspr),y+sprite_get_height(buttonspr)){pressed=1 if global.sound=1{audio_play_sound(snd_select,0,0)}}
	else{pressed=0}
	
	return pressed;
}