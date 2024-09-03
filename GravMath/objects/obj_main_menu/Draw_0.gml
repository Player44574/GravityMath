//draw UI
draw_set_color(make_color_rgb(71, 77, 93))
draw_rectangle(0,0,global.cw,global.ch,false)

draw_sprite(spr_play_button,0,global.cw/2-96+8,global.ch/2)
draw_sprite(spr_play_button,0,global.cw/2+96-8,global.ch/2)