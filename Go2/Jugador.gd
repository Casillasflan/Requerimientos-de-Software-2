extends KinematicBody2D

var velocidad:int = 400
var brinco:int = 800
var gravedad:int = 850
var vel:Vector2 = Vector2()
var piso:bool = false
onready var sprite = $Sprite

func _physics_process(delta):
	vel.x = 0
	if Input.is_action_pressed("ui_left"):
		vel.x -= velocidad
	if Input.is_action_pressed("ui_right"):
		vel.x += velocidad	
	vel = move_and_slide(vel,Vector2.UP)
	vel.y += gravedad * delta
	if Input.is_action_pressed("ui_up") and is_on_floor():
		vel.y -= brinco
	pass
