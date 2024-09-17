//draw UI
if global.displayRotation=0{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,96,global.ch,false)
	draw_rectangle(global.cw-128,0,global.cw,global.ch,false)
	
	//drawTime
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(48,global.cw/2,floor(time/60))
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite_ext(spr_time,0,48,global.ch/2-64,0.75,0.75,0,c_white,1)
	
}else{
	//draw bars
	draw_set_color(#202229)
	draw_rectangle(0,0,global.cw,96,false)
	draw_rectangle(0,global.ch-128,global.cw,global.ch,false)
	
	//drawTime
	draw_set_color(c_white)
	draw_set_halign(fa_center)
	draw_set_valign(fa_center)
	draw_text(global.cw/2,72,string(floor(time/3600))+":"+string(floor(time/60)))
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	draw_sprite_ext(spr_time,0,global.cw/2,32,0.75,0.75,0,c_white,1)
}
