extends KinematicBody2D

var score : int = 0
var speed : int = 200
var jumpforce : int = 600
var gravity : int = 1000
var vel : Vector2 = Vector2()

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):

# setting velocity x to 0
	vel.x = 0

# Gravity
	vel.y = vel.y + gravity*delta;

# Jump input
	if Input.is_action_just_pressed("ball_jump") and (is_on_floor()): #or is_on_wall()):
		vel.y = vel.y - jumpforce
		vel = move_and_slide(vel, Vector2.UP)
	elif is_on_floor():
		vel = move_and_slide(vel, Vector2.UP)*2
		#old : vel = move_and_slide(vel, Vector2.UP)*3
	else:
		vel = move_and_slide(vel, Vector2.UP)
