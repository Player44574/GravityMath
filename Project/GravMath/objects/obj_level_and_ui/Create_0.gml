global.ballnum=0
global.solballnum=0
global.pause=0
global.pickingAball=0
global.checkPosOnSection=0
global.finish=0
global.checkWin=0
global.winNumber[0]=0
global.winNumber[1]=0
global.winNumber[2]=0
global.winNumber[3]=0
global.displayEndScreen=0
nBalls=0

while nBalls < 2 {
	nBalls = round(irandom_range(1.6,4))
}

generated=0
counter=0
time=0

while generated=0{
	scr_create_balls(nBalls)
}

for (var i=0; i<nBalls; i++){
    staticBall=instance_create_layer(0,0,layer,obj_static_ball)
	with (staticBall){
		ballID = i
		number = obj_level_and_ui.balls[i]
		global.ballnum++
	}
}

layer=layer_get_id("Instances_1")

for (i=0; i<10; i++) {
	randomize()
    solutionBalls=array_shuffle(solutionBalls)
}

for (var i=0; i<nBalls*3; i++){
    dynamicBall=instance_create_layer(0,0,layer,obj_dynamic_ball)
	with (dynamicBall){
		ballID = i
		number = obj_level_and_ui.solutionBalls[i]
		global.solballnum++
		
		if global.displayRotation=0{
			if ballID=0{
				y=(global.ch/2)/3-32
				x=global.cw-160+8+16+32
			}
			else if ballID=1{
				y=((global.ch/2)/3)*2-32
				x=global.cw-160+8+16+32
			}
			else if ballID=2{
				y=(global.ch/2)-32
				x=global.cw-160+8+16+32
			}
			else if ballID=3{
				y=(global.ch/2)+32
				x=global.cw-160+8+16+32
			}
			else if ballID=4{
				y=(global.ch/2)+((global.ch/2)/3)+32
				x=global.cw-160+8+16+32
			}
			else if ballID=5{
				y=(global.ch/2)+((global.ch/2)/3)*2+32
				x=global.cw-160+8+16+32
			}
			else if ballID=6{
				y=(global.ch/2)/3-32
				x=global.cw-160+8+16+32+64
			}
			else if ballID=7{
				y=((global.ch/2)/3)*2-32
				x=global.cw-160+8+16+32+64
			}
			else if ballID=8{
				y=(global.ch/2)-32
				x=global.cw-160+8+16+32+64
			}
			else if ballID=9{
				y=(global.ch/2)+32
				x=global.cw-160+8+16+32+64
			}
			else if ballID=10{
				y=(global.ch/2)+((global.ch/2)/3)+32
				x=global.cw-160+8+16+32+64
			}
			else if ballID=11{
				y=(global.ch/2)+((global.ch/2)/3)*2+32
				x=global.cw-160+8+16+32+64
			}
		}
		else{
			if ballID=0{
				x=(global.cw/2)/3-32
				y=global.ch-160+8+16+32
			}
			else if ballID=1{
				x=((global.cw/2)/3)*2-32
				y=global.ch-160+8+16+32
			}
			else if ballID=2{
				x=(global.cw/2)-32
				y=global.ch-160+8+16+32
			}
			else if ballID=3{
				x=(global.cw/2)+32
				y=global.ch-160+8+16+32
			}
			else if ballID=4{
				x=(global.cw/2)+((global.cw/2)/3)+32
				y=global.ch-160+8+16+32
			}
			else if ballID=5{
				x=(global.cw/2)+((global.cw/2)/3)*2+32
				y=global.ch-160+8+16+32
			}
			else if ballID=6{
				x=(global.cw/2)/3-32
				y=global.ch-160+8+16+32+64
			}
			else if ballID=7{
				x=((global.cw/2)/3)*2-32
				y=global.ch-160+8+16+32+64
			}
			else if ballID=8{
				x=(global.cw/2)-32
				y=global.ch-160+8+16+32+64
			}
			else if ballID=9{
				x=(global.cw/2)+32
				y=global.ch-160+8+16+32+64
			}
			else if ballID=10{
				x=(global.cw/2)+((global.cw/2)/3)+32
				y=global.ch-160+8+16+32+64
			}
			else if ballID=11{
				x=(global.cw/2)+((global.cw/2)/3)*2+32
				y=global.ch-160+8+16+32+64
			}
		}
	}
}