global.ballnum=0
nBalls = round(irandom_range(1,4))
generated=0
counter=0

while generated=0{
	scr_create_balls(nBalls)
}

for (i=0; i<nBalls; i++) {
    staticBall=instance_create_layer(0,0,layer,obj_static_ball)
	with staticBall{
		ballID = obj_level_and_ui.i
		number = obj_level_and_ui.balls[obj_level_and_ui.i]
		global.ballnum++
	}
}