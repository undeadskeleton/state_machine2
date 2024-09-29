extends Node

var current_state : State 
var states : Dictionary = {}

@export var initial_state : State

func _ready() -> void:
	for child in get_children():
		if child is State:
			states[child.name.to_lower()] = child
			child.Transitioned.connect(change_state)
	if initial_state:
		initial_state.enter()
		current_state = initial_state

func _process(delta: float) -> void:
	if current_state:
		current_state.update(delta)
	$"../Label".text = str(current_state.get_name())
	
	
func _physics_process(delta: float) -> void:
	if current_state:
		current_state.physics_update(delta)
 
func change_state(state,new_state_name):
	if state != current_state:
		return
	var new_state = states.get(new_state_name.to_lower())
	if !new_state:
		return
	
	if current_state:
		current_state.exit()
	new_state.enter()
	
	current_state = new_state
