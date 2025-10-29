extends Area2D

@onready var timer: Timer = $Timer
@onready var gameover_sound: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var deaths: Label = $"../../../MaskPlayer/Camera2D/deaths"

func _on_body_entered(body: Node2D) -> void:
	Engine.time_scale = 0.5
	if(body.get_node("CollisionShape2D")):
		gameover_sound.play()
		body.get_node("CollisionShape2D").queue_free()
		timer.start()


func _on_timer_timeout() -> void:
	Engine.time_scale = 1.0
	Globals.death+=1
	get_tree().reload_current_scene()
