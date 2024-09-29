extends State
class_name playerjump

@export var player : CharacterBody2D
@export var jump_velocity : int = 100
@export var gravity_value : int = 400

func enter():
	pass

func update(delta):
	if player.velocity.y > 0:
		Transitioned.emit(self,"fall")
	return null

func physics_update(delta):
	if player.jump_input:
		player.velocity.y =  -jump_velocity
	
