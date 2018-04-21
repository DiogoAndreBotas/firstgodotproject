extends RigidBody2D

export (int) var MIN_SPEED
export (int) var MAX_SPEED

func _on_Visibility_screen_exited():
	queue_free()
	pass