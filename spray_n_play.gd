extends Node2D

@onready var particle_scene = $spray # The particle node (if needed for effects)
@onready var area_scene = $WindexHand/spray/spray_particle_area # The existing Area2D node (which contains CollisionShape2D)
@export var lifetime : float = 2.0 # Lifetime of the region in seconds

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_Button_pressed():
	#var spray_instance = RegionScene.instantiate()
	#spray_instance.position = Vector2()
	pass

func _input(InputEvent) -> void:
	if InputEvent is InputEventMouseButton and InputEvent.pressed:
		# Spray out some particles
		#$spray.emitting = true;
		# Create the collision region
		spray()

		
		# Turn on the collision area
		#get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", false);
	#if InputEvent is InputEventMouseMotion:
		#get_node("spray/spray_particle_area/particleCollide").set_deferred("disabled", true);
func spray() -> void:
	var spray_region = area_scene.duplicate()
	spray_region.position = position
	add_child(spray_region)
	
	var timer = Timer.new()
	spray_region.add_child(timer)
	timer.wait_time = lifetime
	timer.one_shot = true
	timer.connect("timeout", Callable(self, "_on_timer_timeout"))
	timer.start()
	#if not RegionScene:
		#return
	#var spray_region = RegionScene.instantiate()
	#spray_region.global_position = get_global_mouse_position()
	#get_tree().current_scene.add_child(spray_region)
	#add_child(spray_region)

func _on_timer_timeout():
	queue_free();
