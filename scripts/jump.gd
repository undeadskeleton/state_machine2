extends State
class_name playerjump

@export var player : CharacterBody2D
@export var jump_velocity : int = 100
@export var gravity_value : int = 400

func enter():
	pass

func update(delta):
	#player.gravity(delta)
	if not player.is_on_floor():
		player.velocity.y += delta * gravity_value
	if player.velocity.y > 0:
		Transitioned.emit(self,"fall")
	return null

func physics_update(delta):
	if not player.is_on_floor():
		player.velocity.y += delta * gravity_value
	if player.jump_input:
		player.velocity.y =  -jump_velocity

func exit():
	player.jump_input = false
