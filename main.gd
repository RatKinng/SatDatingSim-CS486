extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var dialog = Dialogic.start("hallway-timeline")
	add_child(dialog)
	Dialogic.signal_event.connect(_date_ended)
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
	
func _date_ended(date_ended) -> void:
	var MINI = preload("res://D8 nite.tscn")
	var mini = MINI.instantiate()
	add_child(mini)
	pass
