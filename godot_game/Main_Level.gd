extends Node2D

export (int) var kill_score = 50
var score
var bullets = 6

func _ready():
	score = 0
	pass

func kill_timer_timeout():
	score += kill_score
	$HUD.update_score(score)
	pass

func _process(delta):
	if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
		$Audio/Shooting.play(0)
		$Kill_Timer.start()
	pass

func game_over():
	pass