extends RigidBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"

onready var sprite = $Sprite
# Called when the node enters the scene tree for the first time.
func _ready():
	if gravity_scale < 0:
		sprite.visible = false
	else:
		sprite.visible = true
