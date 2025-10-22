extends Area2D

func next_level():
	print(Globals.level)
	Globals.level+=1
	
	if Globals.level > 3:
		Globals.level = 1
	
	var current ="res://scenes/level_"+str(Globals.level)+".tscn"
	print(current)
	get_tree().change_scene_to_file(current)

func _on_body_entered(body: Node2D) -> void:
	next_level()
	
