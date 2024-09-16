if global.displayRotation=0{
	if 128<x<global.cw-160{
		show_debug_message("in area")
	}else{
		show_debug_message("not in area")
	}
}else{
	if 128<y<global.cw-160{
		show_debug_message("in area")
	}else{
		show_debug_message("not in area")
	}
}

if point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32) and mouse_check_button(mb_any){
	applyPhysics=0
	x=mouse_x
	y=mouse_y
}

/*//apply physics
if applyPhysics=1{
	if global.displayRotation=0{
		draw_set_color(#202229)
		draw_rectangle(0,0,96,global.ch,false)
		draw_rectangle(global.cw-128,0,global.cw,global.ch,false)
	}else{
		draw_set_color(#202229)
		draw_rectangle(0,0,global.cw,96,false)
		draw_rectangle(0,global.ch-128,global.cw,global.ch,false)
	}
}