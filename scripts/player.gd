extends CharacterBody2D


#movement 
var speed : int = 80
@export var gravity_value : int = 400
var dir 
var jump_input : bool

#animation
@onready var anispr = $AnimatedSprite2D

func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	movement_input()
	move_and_slide()
	print("velocity",velocity)
	

func movement_input():
	dir = Input.get_axis("left","right")
	"""
	if Input.is_action_just_pressed("left"):
		dir = Vector2.LEFT
	if Input.is_action_just_released("right"):
		dir = Vector2.RIGHT
		"""
	if Input.is_action_just_pressed("jump"):
		jump_input = true

func handle_animation():
	if velocity.x ==0:
		anispr.play("idle")
	elif velocity.x > 0:
		anispr.play("run")
	elif velocity.y <0:
		anispr.play("jump")
	elif velocity.y>0 and !is_on_floor():
		anispr.play("fall")

func gravity(delta):
	if not is_on_floor():
		velocity.y += delta * gravity_value
