extends Node
class_name State

signal Transitioned
@export var animation_name : String

var gravity_value = ProjectSettings.get_setting("physics/2d/default_gravity")
var player : Player
func enter()-> void:
	player.anispr.play(animation_name)
	
func exit():
	pass

func update(delta):
	pass
	
func physics_update(delta):
	pass
