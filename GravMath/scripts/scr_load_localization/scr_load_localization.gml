// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_load_localization(language){
	if language=0{TRlanguage = "Español"}
	if language=1{TRlanguage = "English"}
	if language=2{TRlanguage = "Français"}
	
	if TRlanguage = "Español"{
		global.TXTPlay = "Jugar."
		global.TXTIntCod = "Introducir código."
		global.TXTSettings = "Ajustes."
		global.TXTNLV = "Crear nivel."
		
	}else if TRlanguage = "English"{
		global.TXTPlay = "Play."
		global.TXTIntCod = "Introducir código."
		global.TXTSettings = "Options."
		global.TXTNLV = "Crear nivel."
		
	}else if TRlanguage = "Français"{
		global.TXTPlay = "Jouer."
		global.TXTIntCod = "Introducir código."
		global.TXTSettings = "Paramètres."
		global.TXTNLV = "Crear nivel."
		
	}
}
