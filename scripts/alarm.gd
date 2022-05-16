extends Node2D

var area : int = 0
var fire = 0
var alarm = 0

func _process(delta):
	if(area>0 and get_parent().get_parent().get_parent().get_node("LevelDesign/camera_03").pos<=area):
		#print("gameover")
		var gameover = load("res://scenes/level_03_gameover.tscn")
		get_parent().get_parent().get_parent().get_parent().add_child(gameover.instance())
		get_parent().get_parent().get_parent().queue_free()
	
func _on_lever1_area_body_entered(body):
	if body.name=="Ball_RigidBody2D":
		if(alarm==0):
			alarm=1
			get_parent().get_parent().get_node("wheel_3/out1/lever").flip_h=true
			get_parent().get_parent().get_node("lever_sound").play()
			get_parent().get_parent().get_node("wheel_3/out2/Door1").rotation_degrees = 18
		
			#play alarm animation
			get_parent().get_parent().get_node("CanvasLayer/alarm/AnimationPlayer").play("alarm")


func _on_lever2_area_body_entered(body):
	if body.name=="Ball_RigidBody2D":
		if(alarm==0):
			alarm=1
			get_parent().get_parent().get_node("wheel_3/out2/lever").flip_h=true
			get_parent().get_parent().get_node("lever_sound").play()
			get_parent().get_parent().get_node("wheel_3/out3/Door2").rotation_degrees = 40
		
			#play alarm animation
			get_parent().get_parent().get_node("CanvasLayer/alarm/AnimationPlayer").play("alarm")

func _on_lever3_area_body_entered(body):
	if body.name=="Ball_RigidBody2D":
		if(alarm==0):
			alarm=1
			get_parent().get_parent().get_node("wheel_3/out3/lever").flip_h=true
			get_parent().get_parent().get_node("lever_sound").play()
			get_parent().get_parent().get_node("wheel_3/out4/Door3").rotation_degrees = 99
		
			#play alarm animation
			get_parent().get_parent().get_node("CanvasLayer/alarm/AnimationPlayer").play("alarm")


func fire_time(): #alarm will call this method at the end
	if(fire==0):
		get_parent().get_parent().get_node("fire_out1").visible = true
		get_parent().get_parent().get_node("fire_out1").get_node("fire").play("fire")
		fire+=1
		alarm=0
	elif(fire==1):
		get_parent().get_parent().get_node("fire_out2").visible = true
		get_parent().get_parent().get_node("fire_out2").get_node("fire").play("fire")
		fire+=1
		alarm=0
	elif(fire==2):
		get_parent().get_parent().get_node("fire_out3").visible = true
		get_parent().get_parent().get_node("fire_out3").get_node("fire").play("fire")
		fire+=1
		alarm=0

func checkplayerposition():
	area+=1
