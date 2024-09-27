if global.pause=0 and global.finish=0{
	time++
}

if keyboard_check_released(vk_enter){global.finish=1}

if global.finish=1 and global.checkWin=1 and global.winNumber=0{
	global.displayEndScreen=1
}
else if global.checkWin=1{
	global.displayEndScreen=2
}