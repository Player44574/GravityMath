//draw UI
if global.displayRotation=0{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,96,global.ch,false)
	
	//draw home button
	if draw_custom_button(5,8,spr_home_button,""){
		instance_destroy()
		instance_create_layer(0,0,layer,obj_main_menu)
	}
	
	//draw language setting
	draw_set_color(c_white)
	draw_text(128, 16, global.TXTLang)
	
	if draw_custom_button_ext(128,64,spr_banderas_pequ,0,""){
		ini_open("options.ini")
		ini_write_real("options","language",0)
		ini_close()
		scr_load_localization(0)
	}
	if draw_custom_button_ext(128+96,64,spr_banderas_pequ,1,""){
		ini_open("options.ini")
		ini_write_real("options","language",1)
		ini_close()
		scr_load_localization(1)
	}
	if draw_custom_button_ext(128+96+96,64,spr_banderas_pequ,2,""){
		ini_open("options.ini")
		ini_write_real("options","language",2)
		ini_close()
		scr_load_localization(2)
	}
	
	//draw difficulty setting
	if global.dificulty=0{difficultyText = global.TXTEz}
	else if global.dificulty=1{difficultyText = global.TXTMed}
	else if global.dificulty=2{difficultyText = global.TXTMMed}
	
	draw_text(128, 144, global.TXTDiff + " " + difficultyText)
	
	if draw_custom_button_ext(128,192,spr_difficulty_button,0,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",0)
		ini_close()
		global.dificulty=0
	}
	if draw_custom_button_ext(128+88,192,spr_difficulty_button,1,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",1)
		ini_close()
		global.dificulty=1
	}
	if draw_custom_button_ext(128+88+88,192,spr_difficulty_button,2,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",2)
		ini_close()
		global.dificulty=2
	}
	
	//draw sound setting
	draw_text(128, 272, global.TXTSnd)
	if draw_custom_button_ext(128,320,spr_blank_button,2,""){
		if global.sound=0{
			ini_open("options.ini")
			ini_write_real("options","sound",1)
			ini_close()
			global.sound=1
		}else{
			ini_open("options.ini")
			ini_write_real("options","sound",0)
			ini_close()
			global.sound=0
		}
	}
	draw_sprite_ext(spr_sound,global.sound,128,320,0.75,0.75,0,c_white,1)
	
}else{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,global.cw,96,false)
	
	//draw home button
	if draw_custom_button(8,8,spr_home_button,""){
		instance_destroy()
		instance_create_layer(0,0,layer,obj_main_menu)
	}
	
	//draw language setting
	draw_set_color(c_white)
	draw_text(8, 128, global.TXTLang)
	
	if draw_custom_button_ext(8,160,spr_banderas_pequ,0,""){
		ini_open("options.ini")
		ini_write_real("options","language",0)
		ini_close()
		scr_load_localization(0)
	}
	if draw_custom_button_ext(8+96,160,spr_banderas_pequ,1,""){
		ini_open("options.ini")
		ini_write_real("options","language",1)
		ini_close()
		scr_load_localization(1)
	}
	if draw_custom_button_ext(8+96+96,160,spr_banderas_pequ,2,""){
		ini_open("options.ini")
		ini_write_real("options","language",2)
		ini_close()
		scr_load_localization(2)
	}

	//draw difficulty setting
	if global.dificulty=0{difficultyText = global.TXTEz}
	else if global.dificulty=1{difficultyText = global.TXTMed}
	else if global.dificulty=2{difficultyText = global.TXTMMed}
	
	draw_text(8, 240, global.TXTDiff + " " + difficultyText)
	
	if draw_custom_button_ext(8,280,spr_difficulty_button,0,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",0)
		ini_close()
		global.dificulty=0
	}
	if draw_custom_button_ext(8+88,280,spr_difficulty_button,1,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",1)
		ini_close()
		global.dificulty=1
	}
	if draw_custom_button_ext(8+88+88,280,spr_difficulty_button,2,""){
		ini_open("options.ini")
		ini_write_real("options","dificulty",2)
		ini_close()
		global.dificulty=2
	}

	//draw sound setting
	draw_text(8, 352, global.TXTSnd)
	if draw_custom_button_ext(8,388,spr_blank_button,2,""){
		if global.sound=0{
			ini_open("options.ini")
			ini_write_real("options","sound",1)
			ini_close()
			global.sound=1
		}else{
			ini_open("options.ini")
			ini_write_real("options","sound",0)
			ini_close()
			global.sound=0
		}
	}
	draw_sprite_ext(spr_sound,global.sound,8,392-4,0.75,0.75,0,c_white,1)
	
	draw_set_halign(fa_right)
	draw_set_valign(fa_bottom)
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_text(global.cw-8+2,global.ch-8+2,global.TXTHechoPor + "Pedro Alcedo")
	draw_set_color(c_white)
	draw_set_alpha(1)
	draw_text(global.cw-8,global.ch-8,global.TXTHechoPor + "Pedro Alcedo")
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}