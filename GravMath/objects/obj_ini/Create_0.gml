//create screen driver
instance_create_layer(0,0,layer,obj_screen_driver)

//setUP
ini_open("options.ini")
setUP=ini_read_real("options","language",-1)
ini_close()

if setUP=-1{//interrups load and goes to set up language
	loadSetUP=1
}else{ //loadPreferences
	loadSetUP=0
	
	ini_open("options.ini")
	language=ini_read_real("options","language",-1)
	global.sound=ini_read_real("options","sound",1)
	global.dificulty=ini_read_real("options","dificulty",0)
	ini_close()

	//LocalizeGame
	scr_load_localization(language)
	
	//load main menu
	instance_create_layer(0,0,layer,obj_main_menu)
	
	//randomize seed
	randomize();
}