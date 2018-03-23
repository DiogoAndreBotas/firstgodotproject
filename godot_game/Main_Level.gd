extends Node2D

export (PackedScene) var enemy
export (int) var kill_score = 50
var score
var bullets = 6

func _ready():
	score = 0
	$Player.start($Position2D.position)
	pass

func kill_timer_timeout():
	score += kill_score
	$HUD.update_score(score)
	pass

func _process(delta):
	if(Input.is_key_pressed(KEY_R) && bullets!=6):
		bullets = 6
		$HUD.update_ammo(bullets)
	if(Input.is_mouse_button_pressed(BUTTON_LEFT)):
		$Audio/Shooting.play(0)
		$Kill_Timer.start()
#		if(bullets != 0):
#			bullets = bullets - 1
#			$HUD.update_ammo(bullets)
	pass

func game_over():
	pass

func _on_Enemy_Timer_timeout():
#	$Enemy_Path/Path_Follow.set_offset(randi())
#	var mob = enemy.instance()
#	add_child(mob)
#	var direction = $Enemy_Path/Path_Follow.rotation + PI/2
#	mob.position = $Enemy_Path/Path_Follow.position
#	direction += rand_range(-PI/4, PI/4)
#	mob.rotation = direction
#	mob.set_linear_velocity(Vector2(rand_range(10, 100), 0).rotated(direction))
	pass

func _on_Start_Timer_timeout():
	$Enemy_Timer.start()
	pass
