extends State
class_name playerfall




func enter():
	player.get_gravity()
	
func update(delta):
	if player.velocity.y == 0 :
		Transitioned.emit(self,"idle")
	return null

func physics_update(delta):
	player.velocity.y += gravity_value * delta
	
func exit():
	player.velocity.y = 0
	
