extends Node2D

var dialog = 0
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	dialog = Dialogic.start("hallway-timeline")
	add_child(dialog)
	Dialogic.signal_event.connect(_date_ended)
	
	
	pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass
	
func _date_ended(date_ended) -> void:
	dialog.queue_free()
	var MINI = preload("res://D8 nite.tscn")
	var minil = MINI.instantiate()
	add_child(minil)
	#remove_child(dialog)
	#_lawler()
	pass

func _lawler() -> void:
	var LAW = preload("res://node_2d.tscn")
	var law = LAW.instantiate()
	add_child(law)
