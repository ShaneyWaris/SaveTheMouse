extends Node2D

var play : int = 0
var timer :int = 0
var StartGameScene = preload("res://scenes/Level_01.tscn")
var Story1 = preload("res://scenes/Story1.tscn")


func _on_PlayButton_pressed():
	#get_node("MenuSound").volume_db = -10 #properties
	#get_node("ConfirmationSound").play()
	play=1


func _on_QuitButton_pressed(): #no benefit in reducing mainmenu sound during quitting
	get_tree().quit(0)

func _process(delta):
	if(play == 1):
		timer += 1
		get_node("MenuSound").volume_db -= 5
		
		if(timer==20):
			get_node("ConfirmationSound").play()
			play=0
	
	elif(timer!=0):
		timer = timer-1
		get_node("MenuSound").volume_db += 5
		
		if(timer==0):
			#get_parent().add_child(StartGameScene.instance()) # earlier one
			get_parent().add_child(Story1.instance())
			queue_free()
		
