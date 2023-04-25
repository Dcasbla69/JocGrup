extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
#print(get_tree().get_root().get_node("res://KnightChar.tscn"))
var jugador = get_root().get_node("res://KnightChar.tscn")
var motion = Vector2.ZERO

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	#position += (jugador.position - position)
	motion += position.direction_to(jugador.position)
	move_and_slide(motion)
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
