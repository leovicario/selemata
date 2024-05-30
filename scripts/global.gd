extends Node

@export var fruits = 0
@export var seeds = 20
@export var money = 100

func addFruits(num):
	fruits += 1	
	
func substractFruits():
	fruits -= 1
	
func substractSeeds():
	seeds -= 1
	
func updateMoney(num):
	money = money + num
