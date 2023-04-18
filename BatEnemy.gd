extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var movespeed = 50

onready var player = get_parent().get_node("Player")


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var dir = global_position.direction_to(player.global_position)
	var vel = dir*movespeed
	move_and_slide(vel)