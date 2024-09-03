try{
	global.aspectRatio=window_get_width()/window_get_height();
	camera_set_view_size(view_camera[0],640*global.aspectRatio,640);
	surface_resize(application_surface,640*global.aspectRatio,640);
	display_set_gui_size(640*global.aspectRatio, 640);
	
	if global.aspectRatio>=1{
		global.displayRotation=0 //Horizontal
	}else{
		global.displayRotation=1 //Vertical
	}
	
	global.cw=camera_get_view_width(view_camera[0])
	global.ch=camera_get_view_height(view_camera[0])
	
	global.ww=window_get_width()
	global.wh=window_get_height()
}

//rescale for html exports
if os_browser{
	try{
		if (browser_width != width || browser_height != height){
			width = browser_width;
			height = browser_height;
			window_set_size(width, height);
		}
	}
}