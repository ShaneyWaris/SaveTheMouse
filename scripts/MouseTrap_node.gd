extends Node2D

#signal health_changed(damage)
var damage : int = 1

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _on_Area2D_body_entered(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		get_node("AnimationPlayer").play("MouseTrap")
		body.health -= damage
		print(body.health)
		#emit_signal("health_changed", damage)



func _on_Area2D_body_exited(body):
	pass # Replace with function body.
	if body.name=="Ball_RigidBody2D":
		get_node("AnimationPlayer").stop(true)
