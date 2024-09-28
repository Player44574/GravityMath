if global.finish=1 and scale<0.1{
	with(other){
		displayNumber=displayNumber+other.number
	}
	instance_destroy()
	global.checkWin=1
}