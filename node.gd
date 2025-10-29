extends Node


func _ready():
	Input.connect("joy_connection_changed", Callable(self, "_on_joy_connection_changed"))

func _on_joy_connection_changed(device_id, connected):
	if connected:
		print("Controle conectado: ", Input.get_joy_name(device_id))
	else:
		print("Controle desconectado: ", device_id)
