extends Area2D
var win=0
var EndGameScene = preload("res://scenes/level_02_completed.tscn")

func _ready():
	pass # Replace with function body.

func _process(delta):
	if(win>0):
		win = win - 0.1
		
		if(win<=0):
			print(win)
			get_parent().get_parent().get_node("LevelDesign").queue_free() # we can get all the instances of child nodes like this
			get_parent().get_parent().add_child(EndGameScene.instance())


func _on_trophy2_area_body_entered(body):
	if body.name=="Ball_RigidBody2D":
		get_node("success").play()
		win = 1
