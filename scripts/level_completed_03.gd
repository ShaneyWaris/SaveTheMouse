extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	get_node("mousePlayer").play("mousy")
	pass # Replace with function body.


func _on_QuitButton_pressed():
	pass # Replace with function body.
	get_tree().quit(0)


func _on_NextLevel_pressed():
	var story4 = load("res://scenes/Story4.tscn")
	get_parent().add_child(story4.instance())
	queue_free()


func _on_Replay_pressed():
	var StartGameScene = load("res://scenes/Level_03.tscn")
	get_parent().add_child(StartGameScene.instance())
	queue_free()
