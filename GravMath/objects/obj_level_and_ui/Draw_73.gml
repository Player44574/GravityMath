if global.pause=1{
	draw_set_color(c_black)
	draw_set_alpha(0.5)
	draw_rectangle(0,0,global.cw,global.ch,false)
	draw_set_color(c_white)
	draw_set_alpha(1)
	
	if global.displayRotation=0{
		
		if draw_custom_button(global.cw/2-96-84,global.ch/2,spr_play_button,""){global.pause=0}
		if draw_custom_button(global.cw/2+96-84,global.ch/2,spr_home_button_wide,""){
			instance_destroy(obj_dynamic_ball)
			instance_destroy(obj_static_ball)
			global.pause=0
			instance_create_layer(0,0,layer,obj_main_menu)
			instance_destroy()
		}
	}else{
		if draw_custom_button(global.cw/2-84,global.ch/2-64,spr_play_button,""){global.pause=0}
		if draw_custom_button(global.cw/2-84,global.ch/2+64,spr_home_button_wide,""){
			instance_destroy(obj_dynamic_ball)
			instance_destroy(obj_static_ball)
			global.pause=0
			instance_create_layer(0,0,layer,obj_main_menu)
			instance_destroy()
		}
	}
}