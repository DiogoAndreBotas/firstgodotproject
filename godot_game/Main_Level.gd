extends Node2D

export (PackedScene) var enemy
export (int) var kill_score = 50
var score
var bullets = 6

func _ready():
	score = 0
	$Player.start($Position2D.position)
	$Audio/Ambient.play(0)
	pass

func _input(event):
	if(event.is_action_pressed("left_mouse_click")):
		if(bullets != 0):
			$Audio/Shooting.play(0)
			score += kill_score
			$HUD.update_score(score)
			if(bullets != 0):
				bullets = bullets - 1
				$HUD.update_ammo(bullets)
	if(event.is_action_pressed("reload_key")):
		bullets = 12
		$HUD.update_ammo(bullets)
		$Audio/gun_reload.play(0)
	if(event.is_action_pressed("options")):
		get_tree().change_scene("Options_Screen.tscn")
	pass