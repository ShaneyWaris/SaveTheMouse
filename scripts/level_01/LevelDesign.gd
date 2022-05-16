extends Node2D

var area1_entered : int = 0
var area2_entered : int = 0
var area3_entered : int = 0
var area4_entered : int = 0
var out = 0
var pause = 1

var pos=0
var area=0

# Called when the node enters the scene tree for the first time.
func _ready():
	get_tree().paused = true
	pass # Replace with function body.

func _process(delta):

	# Area 1
	if(area1_entered==1): #entered
		if(get_node("Camera2D").get_zoom().x>0.9):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()-Vector2(0.005,0.005))
		else:
			area1_entered=0
	elif(area1_entered==-1): #exited
		if(get_node("Camera2D").get_zoom().x<1.0):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()+Vector2(0.005,0.005))
		else:
			area1_entered=0
	
	# Area 2
	if(area2_entered==1): #entered
		if(get_node("Camera2D").get_zoom().x>0.8):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()-Vector2(0.005,0.005))
		else:
			area2_entered=0
	elif(area2_entered==-1): #exited
		if(get_node("Camera2D").get_zoom().x<0.9):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()+Vector2(0.005,0.005))
		else:
			area2_entered=0
	
	#Area 3
	if(area3_entered==1): #entered
		if(get_node("Camera2D").get_zoom().x>0.7):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()-Vector2(0.005,0.005))
		else:
			area3_entered=0
	elif(area3_entered==-1): #exited
		if(get_node("Camera2D").get_zoom().x<0.8):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()+Vector2(0.005,0.005))
		else:
			area3_entered=0
	
	#Area 4
	if(area4_entered==1): #entered
		if(get_node("Camera2D").get_zoom().x>0.6):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()-Vector2(0.005,0.005))
		else:
			area4_entered=0
	elif(area4_entered==-1): #exited
		if(get_node("Camera2D").get_zoom().x<0.7):
			get_node("Camera2D").set_zoom(get_node("Camera2D").get_zoom()+Vector2(0.005,0.005))
		else:
			area4_entered=0
	
	
	#scene fade out
	if(out>0 and out<=1):
		out = out - 0.05
		
		if(out<=0):
			scale.x=1
			get_node("Ball_RigidBody2D").position = Vector2(293,707)
			get_node("camera_01/Camera2D").current = true
			out=0
	
		#print(get_node("CanvasLayer/Lives"))
	#health = get_node("Ball_RigidBody2D").get("health")

func _on_Circle_Area1_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle1_entered")
		area1_entered = 1 #entered
		pos+=1
		print(pos)
	
func _on_Circle_Area1_body_exited(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle1_exited")
		area1_entered = -1 #exited
		pos-=1
		print(pos)

#-----------------------------------------------------
func _on_Circle_Area2_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle2_entered")
		area2_entered = 1 #entered
		pos+=1
		print(pos)

func _on_Circle_Area2_body_exited(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle2_exited")
		area2_entered = -1 #exited
		pos-=1
		print(pos)

#-------------------------------------------------------
func _on_Circle_Area3_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle3_entered")
		area3_entered = 1 #entered
		pos+=1
		print(pos)

func _on_Circle_Area3_body_exited(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle3_exited")
		area3_entered = -1 #exited
		pos-=1
		print(pos)

#--------------------------------------------------------
func _on_Circle_Area4_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle4_entered")
		area4_entered = 1 #entered
		pos+=1
		print(pos)

func _on_Circle_Area4_body_exited(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		#print("circle4_exited")
		area4_entered = -1 #exited
		pos-=1
		print(pos)


func _on_outer_area_1_body_entered(body):
	pass # Replace with function body.
	
	
	#scale.x = 0
	#get_node("camera_01/Camera2D").current = false
	#out = 1


func _on_Pause_pressed():
	print("pause pressed")
	get_node("Pause").disabled=true
	get_node("Pause").visible=false
	get_node("dialogue_box").visible=false
	get_node("instructions").visible=false 
	get_tree().paused = false
	pause=0
