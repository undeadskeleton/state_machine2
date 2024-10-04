extends State
class_name playerjump

@export var jump_velocity : int = 800
@export var player : CharacterBody2D
func enter():
	if player.jump_input:
		player.velocity.y =  -jump_velocity

func update(delta):
	if not player.is_on_floor():
		player.velocity.y += gravity_value * delta
	if player.velocity.y > 0:
		Transitioned.emit(self,"fall")
	return null

func physics_update(delta):
	player.velocity.y += delta * gravity_value

func exit():
	pass
