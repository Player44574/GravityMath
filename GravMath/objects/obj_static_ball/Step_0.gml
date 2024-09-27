//two balls
if global.ballnum=2 and ballID=0{
	x = global.cw/2-96
	y = global.ch/2
}
if global.ballnum=2 and ballID=1{
	x = global.cw/2+96
	y = global.ch/2
}
//three balls
if global.ballnum=3 and ballID=0{
	x = global.cw/2-96
	y = global.ch/2-96
}
if global.ballnum=3 and ballID=1{
	x = global.cw/2+96
	y = global.ch/2-96
}
if global.ballnum=3 and ballID=2{
	x = global.cw/2
	y = global.ch/2+96
}
//four balls
if global.ballnum=4 and ballID=0{
	x = global.cw/2-96
	y = global.ch/2-96
}
if global.ballnum=4 and ballID=1{
	x = global.cw/2+96
	y = global.ch/2-96
}
if global.ballnum=4 and ballID=2{
	x = global.cw/2-96
	y = global.ch/2+96
}
if global.ballnum=4 and ballID=3{
	x = global.cw/2+96
	y = global.ch/2+96
}

if displayNumber=0 and global.finish=0{displayNumber=number}
if global.checkWin=1{global.winNumber+=displayNumber}