//draw UI
if global.displayRotation=0{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,96,global.ch,false)
	draw_rectangle(global.cw-128,0,global.cw,global.ch,false)
	
	//drawTime
}else{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,global.cw,96,false)
	draw_rectangle(0,global.ch-128,global.cw,global.ch,false)
	
	//drawTime
	draw_sprite()
}
