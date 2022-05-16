extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Fade in").play("fade_in")
	#get_node("story1_animation").playback_speed = 0.5
	#get_node("story1_animation").play("story1")
	
	pass # Replace with function body.

func _startgame():
	var StartGameScene = preload("res://scenes/Level_01.tscn")
	get_parent().add_child(StartGameScene.instance())
	queue_free()
