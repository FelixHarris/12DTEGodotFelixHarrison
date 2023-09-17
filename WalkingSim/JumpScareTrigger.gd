extends Area3D

var jump_scare_entity = preload("res://jumpscare.tscn")
var triggered = false

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	if body.is_in_group("Player") and not triggered:
		triggered = true
		print("Create the Jumpscare")
		var jumpscare = jump_scare_entity.instantiate()
		jumpscare.global_transform = $Marker3D.global_transform
		get_parent().add_child(jumpscare)
