extends Area2D

@onready var currentFruit = $"."
@onready var seed = $apple_seed
@onready var sapling = $apple_sapling
@onready var almost = $apple_almost
@onready var mature = $apple_mature

func _on_input_event(_viewport, event, _shape_idx):

	if event.is_action_pressed('right_click'): #or Input.is_action_pressed('right_click')
		grow()

func grow():
	
	if seed.visible == true:
		seed.visible = false
		sapling.visible = true
	
	elif sapling.visible == true:
		sapling.visible = false
		almost.visible = true
	
	elif almost.visible == true:
		almost.visible = false
		mature.visible = true
	
	elif mature.visible == true:
		currentFruit.queue_free()
		Global.addFruits(1)
