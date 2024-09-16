//draw UI
if draw_custom_button(global.cw/2-176,global.ch/2-64-44,spr_play_button_wide,global.TXTPlay){
	instance_destroy()
	instance_create_layer(0,0,layer,obj_level_and_ui)
}

if draw_custom_button(global.cw/2-176,global.ch/2+4,spr_play_button_wide,global.TXTSettings){
	
}