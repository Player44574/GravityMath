if global.pause=0{
	time++
}

if mouse_check_button_pressed(mb_left){
	instance_create_layer(mouse_x,mouse_y,layer,obj_dynamic_ball)
}