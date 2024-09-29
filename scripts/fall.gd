extends State
class_name playerfall


@export var player : CharacterBody2D
@export var gravity_value : int = 800

func enter():
	player.get_gravity()
	
func update(delta):
	if player.velocity.y == 0 :
		Transitioned.emit(self,"idle")

func physics_update(delta):
	player.gravity(delta)
	
