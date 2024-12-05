extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass


func _on_lose_area_area_entered(area: Area2D) -> void:
	var LAW = preload("res://node_2d.tscn")
	#remove_child($Area2D)
	#remove_child($CleanroomOutside)
	var law = LAW.instantiate()
	add_child(law)
