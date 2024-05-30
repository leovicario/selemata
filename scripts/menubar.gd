extends Node

@onready var button = $Button
var items = []

func _ready():
	renderItems()
	
func renderItems():
	for itemList in items:
		print(itemList)
		var button = Button.new()
		button.set_name(itemList.name)
		button.text = itemList.name
		add_child(button)
		print('boton añadio')

func countFruits():
	#var fruitsNumber = str(Global.fruits)
	# button.text = fruitsNumber	
	var seedNumber = str(Global.seeds)
	button.text = seedNumber

func _process(_delta):
	countFruits()

