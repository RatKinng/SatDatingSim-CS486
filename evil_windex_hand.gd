extends Sprite2D

@export var RegionScene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
#	Turn off collision area because it is in by default and attached to the sprayer
	get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var mouse_coords = get_global_mouse_position();
	var movement_vector = Vector2(mouse_coords.x, mouse_coords.y);
	transform = Transform2D(-45.0, Vector2(0.3, 0.3), 0.0, movement_vector);
	
	
func _input(InputEvent) -> void:
	if InputEvent is InputEventMouseButton and InputEvent.pressed:
		## Spray out some particles
		$spray.emitting = true;
		## Create the collision region
		#spray()
#
		#
		## Turn on the collision area
		##get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", false);
	##if InputEvent is InputEventMouseMotion:
		##get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
#func spray() -> void:
	#if not RegionScene:
		#return
	#var spray_region = RegionScene.instantiate()
	#spray_region.global_position = get_global_mouse_position()
	#get_tree().current_scene.add_child(spray_region)
