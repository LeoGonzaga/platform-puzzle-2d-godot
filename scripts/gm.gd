extends Node
@onready var door: Node2D = $"../Door"

var count = 0
@export var start_value: int = 30
@onready var timer: Timer = $Timer
@onready var label: Label = $"../MaskPlayer/Camera2D/Label"
@onready var deaths: Label = $"../MaskPlayer/Camera2D/deaths"
@onready var coin_counter: Label = $"../MaskPlayer/Camera2D/Node2D/coinCounter"

func _ready():
	count = start_value
	label.text = str(count)
	deaths.text = str(Globals.death)
	coin_counter.text= str(Globals.score)
	timer.wait_time = 1
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	count -= 1
	label.text = str(count)
	if(count == 0):
		get_tree().reload_current_scene()
		Globals.death+=1
		deaths.text = str(Globals.death)

func add_score():
	Globals.score+=1
	coin_counter.text = str(Globals.score)


func _process(delta):
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
