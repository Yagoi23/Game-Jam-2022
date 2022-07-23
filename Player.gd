extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var player_num := 0

export (int) var speed = 150
export (int) var jump_speed = -300
export (float) var gravity = 9.8
export (float) var weight = 1
#export (float,0,1,0) var acceleration = 1
#export (int) var friction = 0

enum state {RUNNING, JUMP, IDLE, FALL}

onready var sound = $AudioStreamPlayer2D

var velocity = Vector2.ZERO

var player_state

var move_dir

signal statechanged

onready var sprite = $Sprite

var right_key
var left_key
var up_key

#export (int, 0, 200) var push = 100
func varchanged():
	#print("Boat")
	emit_signal("statechanged")

# Called when the node enters the scene tree for the first time.
func _ready():
	connect("statechanged",$AnimationPlayer,"on_state_changed")
	player_state = state.IDLE
	if player_num == 1:
		sprite.modulate = Color(0,0,255)
		right_key = "p2_right"
		left_key = "p2_left"
		up_key = "p2_up"
	else:
		right_key = "p1_right"
		left_key = "p1_left"
		up_key = "p1_up"
#func floorcheck():
	
func _physics_process(delta):
	var current_state = player_state
	print(current_state)
	move_dir = Input.get_action_strength(right_key) - Input.get_action_strength(left_key)
	#print(move_dir)
	if move_dir != 0:
		velocity.x = move_dir*speed
		#if move_dir == 1:
		#	scale.x = 2
		#elif move_dir == -1:
		#	scale.x = -2
		if is_on_floor():
			velocity.y = 0
			player_state = state.RUNNING
			sound.play()
			
	else:
		velocity.x = 0
		player_state = state.IDLE
	if !is_on_floor():
		if velocity.y < 0:
			player_state = state.JUMP
			JUMP()
		else:
			player_state = state.FALL
			FALL()

	if Input.is_action_pressed(up_key) and is_on_floor():
		velocity.y += jump_speed
	move_and_slide(velocity, Vector2.UP, false, 2, PI/4, false)
	#if !is_on_floor():
	#	move_and_slide(velocity, Vector2.UP, false, 4, PI/4, false)
	#else:
	#	move_and_slide(velocity, Vector2.UP, false, 4, PI/4, true)
	
	for index in get_slide_count():
		var push = speed * weight
		var collision = get_slide_collision(index)
		if collision.collider.is_in_group("entity"):
			collision.collider.apply_central_impulse(-collision.normal * push)
	animation()
	if current_state != player_state:
		current_state = player_state
		varchanged()
func animation():
	#$AnimationPlayer.play(str(player_state))
	pass
	#print(player_state)
	

func JUMP():
	velocity.y += weight * gravity

func FALL():
	velocity.y += weight * gravity
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


