extends Area2D

@onready var animation_player = $AnimationPlayer

func _on_body_entered(_body):
	print('ayayayaya')
	animation_player.play("pickup")
	Global.updateMoney(20)

