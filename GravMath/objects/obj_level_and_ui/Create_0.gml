global.ballnum=0
global.solballnum=0
global.pause=0
global.pickingAball=0

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

array_shuffle(solutionBalls)

for (var i=0; i<nBalls*3; i++){
    dynamicBall=instance_create_layer(0,0,layer,obj_dynamic_ball)
	with (dynamicBall){
		ballID = i
		number = obj_level_and_ui.solutionBalls[i]
		global.solballnum++
	}
}