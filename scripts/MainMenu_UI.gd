extends Node2D
const StartGameScene = preload("res://scenes/level1.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Start_pressed():
	pass # Replace with function body.
	get_parent().add_child(StartGameScene.instance())
	queue_free()


func _on_Quit_pressed():
	get_tree().quit(0)
