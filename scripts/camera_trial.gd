extends Node2D

var x_value : int = 1
var y_value : int = 1
var area : int = -1
var timer_counter : float = 1.0
var flag : bool = false

func _ready():
	pass # Replace with function body.


func _on_Area2D_1_body_entered(body):
	if body.name=="player":
		area=1
		#get_node("Camera2D").set_zoom(Vector2(0.7,0.7))


func _on_Area2D_1_body_exited(body):
	if body.name=="player":
		area=-1
		timer_counter = 1.0
		flag = false
		get_node("Camera2D").set_zoom(Vector2(1,1))


func _physics_process(delta : float):
	if(area==1):
		if(timer_counter>0.7 and flag==false):
			timer_counter = timer_counter - delta*0.5#zooming
			get_node("Camera2D").set_zoom(Vector2(timer_counter, timer_counter))
		else:
			flag = true
			timer_counter = timer_counter + delta*0.5
			print(timer_counter)
			get_node("Camera2D").set_zoom(Vector2(timer_counter, timer_counter))
