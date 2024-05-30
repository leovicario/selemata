extends CharacterBody2D

var player = {
	'mainPlayer': {'Name': 'Leo', 'Level': 1},
}

@export var inventory: Inv

const SPEED = 100.0
const JUMP_VELOCITY = -250.0
@onready var animated_sprite = $AnimatedSprite2D

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")


func _physics_process(_delta):
	# Add the gravity.
	# if not is_on_floor():
	# velocity.y += gravity * delta

	# Handle jump.
	# if Input.is_action_just_pressed("jump"):
		# velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("move_left", "move_right")
	
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	var directionY = Input.get_axis("move_up", "move_down")
	if directionY:
		velocity.y = directionY * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	# update animation with input direction
	
	if  Input.is_action_pressed("move_left") or Input.is_action_pressed("move_down") :
		animated_sprite.play("left_moving")
		animated_sprite.flip_h = false
		
	if Input.is_action_pressed("move_right") or Input.is_action_pressed("move_up"):
		animated_sprite.play("left_moving")
		animated_sprite.flip_h = true
		
	if direction <= 0 and Input.is_action_just_released("move_left") or direction == 0 and directionY == 0 and Input.is_action_just_released("move_left") or direction == 0 and directionY == 0 and Input.is_action_just_released("move_down"):
		animated_sprite.play("left_idle")
		animated_sprite.flip_h = false
		
	if direction >= 0 and Input.is_action_just_released("move_right") or direction == 0 and directionY == 0 and Input.is_action_just_released("move_right") or direction == 0 and directionY == 0 and Input.is_action_just_released("move_up"):
		animated_sprite.play("left_idle")
		animated_sprite.flip_h = true
		


	move_and_slide()
