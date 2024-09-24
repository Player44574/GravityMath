if global.displayRotation=0{
	if 128<x<global.cw-160{
		show_debug_message("in area")
		initialPosition=0
	}else{
		show_debug_message("not in area")
		initialPosition=1
	}
}else{
	if 128<y<global.cw-160{
		show_debug_message("in area")
		initialPosition=0
	}else{
		show_debug_message("not in area")
		initialPosition=1
	}
}

if point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32) and mouse_check_button(mb_any) and global.pickingAball=0{
	global.pickingAball=1
	applyPhysics=0
	x=mouse_x
	y=mouse_y
}else if point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32) and mouse_check_button_released(mb_any) and global.pickingAball=1{
	global.pickingAball=0
	applyPhysics=1
}

if applyPhysics=1 and initialPosition=1{
	if global.displayRotation=0{
		/*if ballID=0{
			x=
			y=
		}*/
	}else{
		if ballID=1{
			x=(global.cw/2)/3
			y=global.ch-160+8+16
		}
	}
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