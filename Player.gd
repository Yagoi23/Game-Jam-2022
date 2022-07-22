extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var player_num := 0

export (int) var speed = 150
export (int) var jump_speed = -150
export (float) var gravity = 9.8
export (float) var weight = 1
#export (float,0,1,0) var acceleration = 1
#export (int) var friction = 0

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
	player_state = state.IDLE
	if player_num == 1:
		sprite.color = Color(255,255,255)
		right_key = "p2_right"
		left_key = "p2_left"
		up_key = "p2_up"
	else:
		right_key = "p1_right"
		left_key = "p1_left"
		up_key = "p1_up"
#func floorcheck():
	
func _physics_process(delta):
#	floorcheck()
	if is_on_floor():
		print("on floor")
		velocity.y = 0
	elif is_on_floor() == false:
		print("not on floor")
	#if Input.is_action_pressed(right_key):
	#	print("right")
	move_dir = Input.get_action_strength(right_key) - Input.get_action_strength(left_key)
	if move_dir != 0:
		print("moving")
		velocity.x = move_dir*speed
	else: 
		velocity.x = 0
	if Input.is_action_pressed(up_key) and is_on_floor():
		velocity.y += jump_speed
		
	
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
