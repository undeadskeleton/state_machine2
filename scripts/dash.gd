extends State

var can_dash : bool
@export var dash_distance : int 
@export var player : CharacterBody2D

func update(delta):
	if player.velocity.x == 0 :
		Transitioned.emit(self,"idle")
	
func physics_update(delta):
	if player.dash:
		player.velocity.x = dash_distance 

func exit():
	can_dash = false
