extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("Fade in").play("fade_in")

func _startgame():
	var StartGameScene = preload("res://scenes/Level_02.tscn")
	get_parent().add_child(StartGameScene.instance())
	queue_free()
