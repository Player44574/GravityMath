global.ballnum=0
nBalls = round(irandom_range(1,4))
generated=0
counter=0

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