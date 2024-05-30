extends Control

@onready var label  = $Label

# Called when the node enters the scene tree for the first time.
func _ready():
	label.text = str(Global.money)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	label.text = str(Global.money)
