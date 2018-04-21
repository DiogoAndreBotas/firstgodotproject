extends RigidBody2D

export (int) var SPEED = 500

func _ready():
	$Collision.disabled = true
	pass

func _shoot(start_pos):
	global_position = start_pos
	look_at(get_global_mouse_position())
	var direction = (get_global_mouse_position() - start_pos).normalized()
	linear_velocity = direction * SPEED
	pass

func _on_Collision_Timer_timeout():
	$Collision.disabled = false
	pass