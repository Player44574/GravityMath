if global.pause=0 and global.finish=0{
	time++
}

if global.finish=1 and global.checkWin=1{
	if global.winNumber[0]=0 and global.winNumber[1]=0 and global.winNumber[2]=0 and global.winNumber[3]=0{
		global.displayEndScreen=1
	}else{
		global.displayEndScreen=2
	}
}