extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var player_num := 0

export (int) var speed = 120
export (float) var gravity = 9.8
export (float) var weight = 1

var velocity = Vector2.ZERO

enum state {RUNNING, JUMP, IDLE, FALL}

var player_state = state.IDLE

var move_dir

onready var sprite = $ColorRect

var right_key
var left_key
var up_key

# Called when the node enters the scene tree for the first time.
func _ready():
	if player_num == 1:
		sprite.color = Color(255,255,255)
		right_key = "p2_right"
		left_key = "p2_left"
		up_key = "p2_up"
	else:
		right_key = "p1_right"
		left_key = "p1_left"
		up_key = "p1_up"

func get_input():
	move_dir = Input.get_action_strength(right_key) - Input.get_action_strength(left_key)

func _physics_process(delta):
	if is_on_floor():
		player_state = state.IDLE
	elif not is_on_floor():
		#print("not on floor")
		if velocity.y <= 0:
			player_state = state.JUMP
		else:
			player_state = state.FALL
	
	if player_state == state.FALL:
		#print("falling")
		FALL()
	elif player_state == state.JUMP:
		#print("jumping")
		JUMP()
	move_and_slide(velocity)

func JUMP():
	velocity.y += weight * gravity

func FALL():
	velocity.y += weight * gravity
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
