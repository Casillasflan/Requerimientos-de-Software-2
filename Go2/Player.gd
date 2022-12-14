extends KinematicBody2D

# physics

var speed : int = 200
var jumpForce : int = 600
var gravity : int = 800
var vel : Vector2 = Vector2()
var grounded : bool = false
onready var sprite = $Sprite

func _physics_process (delta):
	vel.x = 0
	if Input.is_action_pressed("ui_left"):
		vel.x -= speed
	if Input.is_action_pressed("ui_right"):
		vel.x += speed

	vel = move_and_slide(vel, Vector2.UP)
	vel.y += gravity * delta

	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y -= jumpForce
	if vel.x < 0:
		sprite.flip_h = true
	elif vel.x > 0:
		sprite.flip_h = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.





