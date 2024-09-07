//one ball
if global.ballnum=1 ballID=0{
	x = global.cw/2
	y = global.ch/2
}
//two balls
if global.ballnum=2 ballID=0{
	x = global.cw/2-96
	y = global.ch/2
}
if global.ballnum=2 ballID=1{
	x = global.cw/2+96
	y = global.ch/2
}
//three balls
if global.ballnum=3 ballID=0{
	x = global.cw/2-96
	y = global.ch/2
}
if global.ballnum=3 ballID=1{
	x = global.cw/2+96
	y = global.ch/2
}
if global.ballnum=3 ballID=2{
	x = global.cw/2
	y = global.ch/2+96
}

//three balls
if global.ballnum=4 ballID=0{
	x = global.cw/2-96
	y = global.ch/2
}
if global.ballnum=4 ballID=1{
	x = global.cw/2+96
	y = global.ch/2
}
if global.ballnum=4 ballID=2{
	x = global.cw/2-96
	y = global.ch/2+96
}
if global.ballnum=4 ballID=3{
	x = global.cw/2+96
	y = global.ch/2+96
}

show_debug_message(string(ballID)+"   "+string(number))