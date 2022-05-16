extends RigidBody2D

var health : int = 5

const JUMP_HEIGHT = 500;
enum MoveDirection { UP, LEFT, RIGHT, NONE }
var velocity = Vector2()
var should_reset : bool = false

func _ready():
	pass

func _integrate_forces(state):
	var direction = null
	if Input.is_action_pressed("ball_jump"): # && linear_velocity.y == 0:
		#print(get_local_mouse_position()) -> will use this position
		direction = MoveDirection.UP
		get_node("jumping_sound").play()
		#print("jumped")
	else:
		direction= MoveDirection.NONE
	
	_move(direction)
	
	if should_reset:
		state.transform.origin = Vector2(293,707)
		#set_linear_velocity(Vector2(0,0))
		should_reset = false
	pass

func _move(direction):
	match direction:
		MoveDirection.NONE:
			velocity = Vector2()
		MoveDirection.UP:
			set_axis_velocity(Vector2(0, -JUMP_HEIGHT))
	set_axis_velocity(velocity)


func _on_outer_area_1_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("Fell")
		set_linear_velocity(Vector2(0,0))
		should_reset = true


func _on_outer_area_2_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("Fell")
		set_linear_velocity(Vector2(0,0))
		should_reset = true


func _on_outer_area_3_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("Fell")
		set_linear_velocity(Vector2(0,0))
		should_reset = true


func _on_outer_area_4_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("Fell")
		set_linear_velocity(Vector2(0,0))
		should_reset = true
