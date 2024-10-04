extends State
class_name playerfall


@export var player: CharacterBody2D

func enter():
	player.get_gravity()
	player.jump_input = false
	
func update(delta):
	if player.is_on_floor() :
		Transitioned.emit(self,"idle")
	return null

func physics_update(delta):
	player.velocity.y += gravity_value * delta
	
func exit():
	player.velocity.y = 0
	
