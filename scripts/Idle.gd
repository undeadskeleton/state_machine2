extends State

class_name playerIdle




func update(delta):
	if player.dir:
		Transitioned.emit(self,"run")
	if player.jump_input:
		Transitioned.emit(self,"jump")
	return null
