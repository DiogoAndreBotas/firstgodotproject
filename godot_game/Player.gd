extends KinematicBody2D

export (int) var SPEED

var vector = Vector2()
var screensize

func _process(delta):
	if(Input.is_key_pressed(KEY_W)) :
		vector.y = -SPEED
		vector.x = 0
		update_borders()
		move_and_slide(vector)
	if(Input.is_key_pressed(KEY_A)) :
		vector.x = -SPEED
		vector.y = 0
		update_borders()
		move_and_slide(vector)
	if(Input.is_key_pressed(KEY_S)) :
		vector.y = SPEED
		vector.x = 0
		update_borders()
		move_and_slide(vector)
	if(Input.is_key_pressed(KEY_D)) :
		vector.x = SPEED
		vector.y = 0
		update_borders()
		move_and_slide(vector)
	$Sprite.look_at(get_global_mouse_position())
	pass

func update_borders():
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	pass

func _ready():
	screensize = get_viewport_rect().size
	pass

func start(pos):
	position = pos
	show()
	$Collision.disabled = false
	pass