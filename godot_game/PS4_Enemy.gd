extends RigidBody2D

signal mob_hit

export (int) var MIN_SPEED
export (int) var MAX_SPEED

func _on_Visibility_screen_exited():
	queue_free()
	pass

func _on_PS4_Mob_body_entered(body):
	queue_free()
	pass