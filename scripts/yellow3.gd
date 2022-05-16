extends KinematicBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Area2D_3_body_entered(body):
	if body.name=="player":
		print("area3")
		queue_free()
