extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Replay_pressed():
	var StartGameScene = load("res://scenes/Level_03.tscn")
	get_parent().add_child(StartGameScene.instance())
	queue_free()

func _on_QuitButton_pressed():
	get_tree().quit(0)
