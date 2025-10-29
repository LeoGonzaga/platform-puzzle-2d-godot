extends Area2D

func next_level():
	print(Globals.level)
	Globals.level+=1
	print(Globals.level)
	if Globals.level > 5:
		Globals.level = 1
	
	var current ="res://scenes/level_"+str(Globals.level)+".tscn"
	get_tree().change_scene_to_file(current)

func _on_body_entered(body: Node2D) -> void:
	next_level()
	
