extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var MoveSpeed = 300

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_direction = Input.get_vector("Move Left","Move Right","Move Up","Move Down")
	var velocity = input_direction*MoveSpeed
	
	
	move_and_slide(velocity,Vector2.UP)
	
