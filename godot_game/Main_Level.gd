extends Node2D

export (PackedScene) var enemy
export (PackedScene) var projectile
export (int) var KILL_SCORE = 50
export (int) var BULLET_NUMBER
var score
var bullets = 12

func _ready():
	score = 0
	$Player.start($Initial_Position.position)
	$Audio/Ambient.play(0)
	pass

func _input(event):
	if(event.is_action_pressed("left_mouse_click")):
		if(bullets != 0):
			if(bullets != BULLET_NUMBER):
				$Audio/Shooting.play(0)
			
			var proj = projectile.instance()
			add_child(proj)
			proj._shoot($Player.global_position)
			
			score += KILL_SCORE
			bullets = bullets - 1
			$HUD.update_ammo(bullets)
			$HUD.update_score(score)
	if(event.is_action_pressed("reload_key")):
		$Audio/gun_reload.play(0)
		bullets = 12
		$HUD.update_ammo(bullets)
		$HUD.update_score(score)
	if(event.is_action_pressed("options")):
		get_tree().change_scene("Options_Screen.tscn")
	pass

func _on_Spawn_Timer_timeout():
	$Mob_Path/Spawn_Location.set_offset(randi())
	var mob = enemy.instance()
	add_child(mob)
	var direction = $Mob_Path/Spawn_Location.rotation + PI/2
	mob.position = $Mob_Path/Spawn_Location.position
	direction += rand_range(-PI/4, PI/4)
	mob.rotation = direction
	mob.set_linear_velocity(Vector2(rand_range(mob.MIN_SPEED, mob.MAX_SPEED), 0).rotated(direction))
	pass