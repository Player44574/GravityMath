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
		global.TXTLang = "Idioma:"
		global.TXTSnd = "Sonido:"
		global.TXTDiff = "Dificultad:"
		global.TXTEz = "Fácil."
		global.TXTMed = "Medio."
		global.TXTMMed = "Difícil."
		global.TXTMPause = "Pausa."
		global.TXTWin = "¡Has ganado! :D"
		global.TXTLoose = "Has perdido :("
		global.TXTHechoPor="Hecho por: "
		
	}else if TRlanguage = "English"{
		global.TXTPlay = "Play."
		global.TXTIntCod = "Enter code."
		global.TXTSettings = "Options."
		global.TXTNLV = "Create level."
		global.TXTLang = "Language:"
		global.TXTSnd = "Sound:"
		global.TXTDiff = "Difficulty:"
		global.TXTEz = "Easy."
		global.TXTMed = "Medium."
		global.TXTMMed = "Hard."
		global.TXTMPause = "Pause."
		global.TXTWin = "You win! :D"
		global.TXTLoose = "You loose :("
		global.TXTHechoPor="Made by: "
		
	}else if TRlanguage = "Français"{
		global.TXTPlay = "Jouer."
		global.TXTIntCod = "Entrez le code."
		global.TXTSettings = "Paramètres."
		global.TXTNLV = "Créer un niveau."
		global.TXTLang = "Langue:"
		global.TXTSnd = "Son:"
		global.TXTDiff = "Difficulté:"
		global.TXTEz = "Facile."
		global.TXTMed = "Moitié."
		global.TXTMMed = "Difficile."
		global.TXTMPause = "Pause."
		global.TXTWin = "Tu as gagné! :D"
		global.TXTLoose = "Tu as perdu :("
		global.TXTHechoPor="Réalisé par: "
	}
}
