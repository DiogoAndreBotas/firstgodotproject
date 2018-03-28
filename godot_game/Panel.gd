extends Panel

var ctr = 0
var entered_scene = false

func _process(delta):
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
	pass

func _input(event):
	if(event.is_action_pressed("init_skip") && ctr == 2 && !entered_scene):
		get_tree().change_scene("Main_Level.tscn")
		entered_scene = true
	if(event.is_action_pressed("dev_init_skip")):
		get_tree().change_scene("Main_Level.tscn")
	pass

func _ready():
	$Audio/init_screen_music.play(0)
	pass