extends CanvasLayer

signal reload

func _ready():
	$Score.hide()
	pass

func score_timer_timeout():
	$Score.hide()
	pass


func update_score_ammo(score, ammo):
	$Score.text = "Score: " + str(score)
	$Score.show()
	$Score_Timer.start()
	$Ammo_Counter.text = "Ammo: " + str(ammo)
	pass
