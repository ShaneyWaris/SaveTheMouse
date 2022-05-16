extends Node2D
var timer : int = 0

func _process(delta):
	if(timer<150):
		timer+=1
	else:
		queue_free()
