extends Area2D

signal hit

func _on_Player_Area_body_entered(body):
	hide()
	emit_signal("hit")
	$Player/Collision.disabled = true
	pass