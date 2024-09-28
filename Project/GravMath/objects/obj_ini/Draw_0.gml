if loadSetUP=1{
	draw_set_color(make_color_rgb(71, 77, 93))
	draw_rectangle(0,0,global.cw,global.ch,false)
	
	draw_sprite_ext(spr_banderas,0,global.cw/2,global.ch/2-128,0.25,0.25,0,c_white,1)
	draw_sprite_ext(spr_banderas,1,global.cw/2,global.ch/2,0.25,0.25,0,c_white,1)
	draw_sprite_ext(spr_banderas,2,global.cw/2,global.ch/2+128,0.25,0.25,0,c_white,1)
	
	if point_in_rectangle(mouse_x,mouse_y,global.cw/2-64,global.ch/2-128-64,global.cw/2+64,global.ch/2-128+64) and mouse_check_button_released(mb_any){
		ini_open("options.ini")
		ini_write_real("options","language",0)
		ini_close()
		instance_destroy(obj_screen_driver)
		instance_destroy()
		game_restart()
	}
	if point_in_rectangle(mouse_x,mouse_y,global.cw/2-64,global.ch/2-64,global.cw/2+64,global.ch/2+64) and mouse_check_button_released(mb_any){
		ini_open("options.ini")
		ini_write_real("options","language",1)
		ini_close()
		instance_destroy(obj_screen_driver)
		instance_destroy()
		game_restart()
	}
	if point_in_rectangle(mouse_x,mouse_y,global.cw/2-64,global.ch/2+128-64,global.cw/2+64,global.ch/2+128+64) and mouse_check_button_released(mb_any){
		ini_open("options.ini")
		ini_write_real("options","language",2)
		ini_close()
		instance_destroy(obj_screen_driver)
		instance_destroy()
		game_restart()
	}
}