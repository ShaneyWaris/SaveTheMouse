extends Node2D

var health = 5


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if(get_parent().get_parent().get_node("Ball_RigidBody2D").get("health")!=health):
		update_health()

func update_health():
	
	health = get_parent().get_parent().get_node("Ball_RigidBody2D").get("health")
	get_parent().get_parent().get_node("Ball_RigidBody2D").get_node("hurt").play("hurt")
	
	if(health==5):
		get_node("Sprite").frame = 0
	elif(health==4):
		get_node("Sprite").frame = 1
	elif(health==3):
		get_node("Sprite").frame = 2
	elif(health==2):
		get_node("Sprite").frame = 3
	elif(health==1):
		get_node("Sprite").frame = 4
	elif(health==0):
		get_node("Sprite").frame = 5
		
		var StartGameScene = preload("res://scenes/level_02_gameover.tscn")
		get_parent().get_parent().get_parent().get_parent().add_child(StartGameScene.instance())
		get_parent().get_parent().get_parent().queue_free()
