extends Label

func _on_timer_timeout():
	visible = !visible


func _input(event):
	if (event is InputEventKey or event is InputEventJoypadButton) and event.pressed:
		start_game()


func start_game():
	print("Iniciando o jogo...")
	get_tree().change_scene_to_file("res://scenes/level_1.tscn")
