extends CanvasLayer

signal reload

func _ready():
	$Score.hide()
	pass

func score_timer_timeout():
	$Score.hide()
	pass

func update_ammo(ammo):
	$Ammo_Counter.text = "Ammo: " + str(ammo)
	pass

func update_score(score):
	$Score.text = "Score: " + str(score)
	$Score.show()
	$Score_Timer.start()
	pass