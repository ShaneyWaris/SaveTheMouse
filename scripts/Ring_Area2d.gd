extends Area2D
#const StartGameScene = preload("res://scenes/Level_completed.tscn")

func _on_Ring_Area2d_body_entered(body):
	if body.name=="player":
		#print("won")
		var StartGameScene = preload("res://scenes/Level_completed.tscn")
		get_parent().add_child(StartGameScene.instance())
		queue_free()
