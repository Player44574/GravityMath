if global.displayRotation=0{
	if 128<x and x<global.cw-160{
		initialPosition=0
	}else{
		initialPosition=1
		offSet=0
	}
}
else{
	if 128<y and y<global.ch-160{
		initialPosition=0
	}else{
		initialPosition=1
		offSet=0
	}
}

if global.pause=0 and global.finish=0{
	if point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32) and mouse_check_button_pressed(mb_any) and global.pickingAball=0{
		global.pickingAball=1
		pickingThisBall=1
	}
	else if mouse_check_button(mb_any) and pickingThisBall=1{
		global.pickingAball=1
		applyPhysics=0
		if global.displayRotation=0{
			y=clamp(mouse_y,0,global.ch)
			x=clamp(mouse_x,129,global.cw)
		}
		if global.displayRotation=1{
			x=clamp(mouse_x,0,global.cw)
			y=clamp(mouse_y,129,global.ch)
		}
	}
	else if point_in_rectangle(mouse_x,mouse_y,x-32,y-32,x+32,y+32) and mouse_check_button_released(mb_any) and global.pickingAball=1{
		global.pickingAball=0
		applyPhysics=1
		pickingThisBall=0
	}
}

if applyPhysics=1 and initialPosition=1{
	if global.displayRotation=0{
		if ballID=0{
			y=lerp(y,(global.ch/2)/3-32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=1{
			y=lerp(y,((global.ch/2)/3)*2-32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=2{
			y=lerp(y,(global.ch/2)-32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=3{
			y=lerp(y,(global.ch/2)+32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=4{
			y=lerp(y,(global.ch/2)+((global.ch/2)/3)+32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=5{
			y=lerp(y,(global.ch/2)+((global.ch/2)/3)*2+32,0.2)
			x=lerp(x,global.cw-160+8+16+32,0.2)
		}
		else if ballID=6{
			y=lerp(y,(global.ch/2)/3-32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
		else if ballID=7{
			y=lerp(y,((global.ch/2)/3)*2-32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
		else if ballID=8{
			y=lerp(y,(global.ch/2)-32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
		else if ballID=9{
			y=lerp(y,(global.ch/2)+32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
		else if ballID=10{
			y=lerp(y,(global.ch/2)+((global.ch/2)/3)+32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
		else if ballID=11{
			y=lerp(y,(global.ch/2)+((global.ch/2)/3)*2+32,0.2)
			x=lerp(x,global.cw-160+8+16+32+64,0.2)
		}
	}
	else{
		if ballID=0{
			x=lerp(x,(global.cw/2)/3-32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=1{
			x=lerp(x,((global.cw/2)/3)*2-32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=2{
			x=lerp(x,(global.cw/2)-32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=3{
			x=lerp(x,(global.cw/2)+32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=4{
			x=lerp(x,(global.cw/2)+((global.cw/2)/3)+32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=5{
			x=lerp(x,(global.cw/2)+((global.cw/2)/3)*2+32,0.2)
			y=lerp(y,global.ch-160+8+16+32,0.2)
		}
		else if ballID=6{
			x=lerp(x,(global.cw/2)/3-32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
		else if ballID=7{
			x=lerp(x,((global.cw/2)/3)*2-32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
		else if ballID=8{
			x=lerp(x,(global.cw/2)-32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
		else if ballID=9{
			x=lerp(x,(global.cw/2)+32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
		else if ballID=10{
			x=lerp(x,(global.cw/2)+((global.cw/2)/3)+32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
		else if ballID=11{
			x=lerp(x,(global.cw/2)+((global.cw/2)/3)*2+32,0.2)
			y=lerp(y,global.ch-160+8+16+32+64,0.2)
		}
	}
}

//apply physics
if applyPhysics=1 and initialPosition=0{
	angle = obj_level_and_ui.time/rotationSpeed
	if global.ballnum=2{
		if x<global.cw/2{
			if place_meeting(global.cw/2-96 + ballRadius * cos(angle + 30 * (offSet)),global.ch/2 + ballRadius * sin(angle + 30 * (offSet)),obj_dynamic_ball) and global.finish=0{
				offSet+=1
			}
			
			x = lerp(x,global.cw/2-96 + ballRadius * cos(angle + 30 * offSet),0.2)
			y = lerp(y,global.ch/2 + ballRadius * sin(angle + 30 * offSet),0.2)
		}
		else{
			if place_meeting(global.cw/2+96 + ballRadius * cos(angle + 30 * (offSet)),global.ch/2 + ballRadius * sin(angle + 30 * (offSet)),obj_dynamic_ball) and global.finish=0{
				offSet+=1
			}
			
			x = lerp(x,global.cw/2+96 + ballRadius * cos(angle + 30 * offSet),0.2)
			y = lerp(y,global.ch/2 + ballRadius * sin(angle + 30 * offSet),0.2)
		}
	}
	else if global.ballnum=3{
		
	}
	else if global.ballnum=4{
		
	}
}

//finish game
if global.finish=1 and initialPosition=0{
	ballRadius=lerp(ballRadius,0,0.05)
	rotationSpeed=lerp(rotationSpeed,60,0.05)
	scale=lerp(scale,0.05,0.05)
}