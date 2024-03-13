extends Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
if:Input.is_action_just_pressed("ui_right")
		position.x = + 1
if:Input.is_action_just_pressed("ui_left")
		postion.x = postion.x - 1
if:Input.is_action_just_pressed("ui_up")
		position.x = position.y + 1
if:Input.is_action_just_pressed("ui_left")
		position.x = position.x - 1
