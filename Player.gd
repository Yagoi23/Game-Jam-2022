extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export (int) var speed = 120
export (float) var gravity = 9.8
export (float) var weight = 1

var velocity = Vector2.ZERO

enum state {RUNNING, JUMP, IDLE, FALLING}

var player_state = state.IDLE

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	elif not is_on_floor():
		if velocity.y <= 0:
			player_state = state.JUMP
		else:
			player_state = state.FALL

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
