//draw UI
if global.displayRotation=0{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,96,global.ch,false)
	
	//draw home button
	if draw_custom_button(8,8,spr_home_button,""){
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
	//draw sound setting
	draw_text(128, 144, global.TXTDiff)
	
	if draw_custom_button(128,192,spr_blank_button,global.TXTEz){
		
	}
	//draw difficulty setting
	
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
}