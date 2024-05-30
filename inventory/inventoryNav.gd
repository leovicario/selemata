extends Control

@onready var inventory: Inv = preload("res://inventory/playerInventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()

func _ready():
	updateSlots()
	
func updateSlots():
	for i in range(min(inventory.items.size(), slots.size())):
		slots[i].update(inventory.items[i])
		print(inventory.items[i])
