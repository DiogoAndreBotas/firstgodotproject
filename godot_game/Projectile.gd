extends RigidBody2D

export (int) var SPEED = 500

func _shoot(start_pos):
	global_position = start_pos
	look_at(get_global_mouse_position())
	var direction = (get_global_mouse_position() - start_pos).normalized()
	linear_velocity = direction * SPEED
	pass

func _on_Projectile_body_entered(body):
	if(body.get_name() == "PS4_Mob"):
		queue_free()
	pass

func _on_Visibility_screen_exited():
	queue_free()
	pass