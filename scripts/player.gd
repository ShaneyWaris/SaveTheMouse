extends KinematicBody2D

# Declare member variables here. Examples:

var score : int = 0
var speed : int = 200
var jumpforce : int = 600
var gravity : int = 1000
# old : var jumpforce : int = 600
# old : var gravity : int = 800


var vel : Vector2 = Vector2()
onready var sprite : Sprite = get_node("sprite(bird)") # will find the sprite at run time of the game

func _physics_process(delta):

# setting velocity x to 0
	vel.x = 0

# Gravity
	vel.y = vel.y + gravity*delta;

# Jump input
	if Input.is_action_just_pressed("bird_jump") and (is_on_floor() or is_on_wall()):
		vel.y = vel.y - jumpforce
		vel = move_and_slide(vel, Vector2.UP)
	elif Input.is_action_pressed("bird_left"):
		vel.x = vel.x - speed
		vel = move_and_slide(vel, Vector2.UP)
	elif Input.is_action_pressed("bird_right"):
		vel.x = vel.x + speed
		vel = move_and_slide(vel, Vector2.UP)
	elif is_on_floor():
		vel = move_and_slide(vel, Vector2.UP)*1.5
		#old : vel = move_and_slide(vel, Vector2.UP)*3
	else:
		vel = move_and_slide(vel, Vector2.UP)
