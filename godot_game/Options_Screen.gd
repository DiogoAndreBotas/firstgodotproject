extends Control

func _input(event):
	if(event.is_action_pressed("options")):
		get_tree().change_scene("Main_Level.tscn")

func _on_button_yes_pressed():
	get_tree().quit()
	pass


func _on_button_no_pressed():
	get_tree().change_scene("Main_Level.tscn")
	pass