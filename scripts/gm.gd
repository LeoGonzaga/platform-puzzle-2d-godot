extends Node
@onready var door: Node2D = $"../Door"

var score = 0
var count = 0
@export var start_value: int = 30
@onready var timer: Timer = $Timer
@onready var label: Label = $"../MaskPlayer/Camera2D/Label"

func _ready():
	count = start_value
	label.text = str(count)
	timer.wait_time = 1
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)

func _on_timer_timeout():
	count -= 1
	label.text = str(count)
	if(count == 0):
		get_tree().reload_current_scene()

func add_score():
	score+=1
	#score_label.text = str(score)


func _process(delta):
	if Input.is_action_just_pressed("reset"):
		get_tree().reload_current_scene()
