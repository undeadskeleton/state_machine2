extends State


@export var dash_distance : int 
@export var player : CharacterBody2D

func update(delta):
	if player.velocity.x == 0 :
		Transitioned.emit(self,"idle")
	
func physics_update(delta):
	if player.dash and player.can_dash:
		player.velocity.x = dash_distance 
		player.can_dash = false

func exit():
	pass
