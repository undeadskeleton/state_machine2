extends State

class_name playerIdle

@export var player : CharacterBody2D

func enter():
	player.can_dash = true
	
func update(delta):
	if player.dir:
		Transitioned.emit(self,"run")
	if player.jump_input:
		Transitioned.emit(self,"jump")
	if player.dash and player.can_dash:
		Transitioned.emit(self,"dash")
	return null
	
