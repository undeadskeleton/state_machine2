extends State
class_name playerrun

@export var speed : int = 50
@export var player : CharacterBody2D

	
func update(delta):
	if player.velocity.x == 0:
		Transitioned.emit(self,"idle")
	if player.jump_input:
		Transitioned.emit(self,"jump")
	return null

func physics_update(delta):
	if player.dir:
		player.velocity.x =  speed * player.dir
	else:
		player.velocity.x = move_toward(player.velocity.x,0,speed)
	player.move_and_slide()
	
