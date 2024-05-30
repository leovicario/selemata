extends Node2D

#@export var fruits = int(randf() * 10)
var fruits = Global.fruits
var fruit = preload("res://scenes/fruits/apple.tscn")
var seeds = Global.seeds
var items = []

@onready var button = $Player/Camera2D/MenuBar/Button
@onready var player =  $Player


	
		
func addSeed():
	if seeds > 0:
		Global.substractSeeds()
		var fruitInstance = fruit.instantiate()
		fruitInstance.position = player.position
		print('wewe')
		add_child(fruitInstance)
	else:
		print('oh no fruits :(')

func _input(event):
	if event.is_action_pressed('left_click') && button.is_hovered():
		addSeed()
		




# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
