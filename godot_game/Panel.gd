extends Panel

var ctr = 0
var HOTKEY = KEY_INSERT

func _process(delta):
	#HOTKEY = Instant Skip so as to facilitate development
	if(Input.is_key_pressed(HOTKEY)):
		get_tree().change_scene("Main_Level.tscn")
		
	if($Fade_in_Timer.time_left == 0 && ctr == 0):
		$Title_1.show()
		$Fade_in_Timer.start()
		ctr = 1
	if($Fade_in_Timer.time_left == 0 && ctr == 1):
		$Title_2.show()
		$Fade_in_Timer.start()
		ctr = 2
	if($Fade_in_Timer.time_left == 0 && ctr == 2):
		$Title_3.show()
		if(Input.is_key_pressed(KEY_ENTER)):
			get_tree().change_scene("Main_Level.tscn")
	pass