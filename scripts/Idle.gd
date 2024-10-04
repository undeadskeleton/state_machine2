extends State

class_name playerIdle

@export var player : CharacterBody2D


func update(delta):
	if player.dir:
		Transitioned.emit(self,"run")
	if player.jump_input:
		Transitioned.emit(self,"jump")
	if player.dash:
		Transitioned.emit(self,"dash")
	return null
	
