extends Sprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):

const SPEED = 200
const GRAVITY = 500
const JUMP_FORCE = -700
const FLOOR_NORMAL = Vector2(0, -1)

var velocity = Vector2()

func _physics_process(delta):
	var input_direction = Vector2()
	input_direction.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	input_direction.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	input_direction = input_direction.normalized()
	
	velocity.x = input_direction.x * SPEED
	velocity.y += GRAVITY * delta
	
	if is_on_floor():
		velocity.y = 0
		if Input.is_action_just_pressed("ui_jump"):
			velocity.y = JUMP_FORCE
	
	velocity = move_and_slide(velocity, FLOOR_NORMAL)
