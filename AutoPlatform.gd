extends KinematicBody2D

export (int) var speed = 10
export (int) var rot = 10
export (bool) var rotating
var velocity = Vector2()
export (int) var Channelid = 0
var dir = 1

var base_y

func _ready():
	base_y = position.y

func _physics_process(delta): #makes a block that moves horizontaly and changes direction when it hits a wall
	velocity.x = speed * dir
	position.y = base_y
	velocity = move_and_slide(velocity, Vector2.UP, false, 4, PI/4, false)
	if is_on_wall():
		dir = dir * -1
	var active = check_active()
	if rotating == true and active == false:
		rotation_degrees = rotation_degrees + rot
	
func check_active():
	if Channelid == 0:
		if ButtonLogicState.Channel0 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 1:
		if ButtonLogicState.Channel1 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 2:
		if ButtonLogicState.Channel2 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 3:
		if ButtonLogicState.Channel3 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 4:
		if ButtonLogicState.Channel4 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 5:
		if ButtonLogicState.Channel5 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 6:
		if ButtonLogicState.Channel6 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 7:
		if ButtonLogicState.Channel7 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 8:
		if ButtonLogicState.Channel8 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	if Channelid == 9:
		if ButtonLogicState.Channel9 == ButtonLogicState.STATE.ON:
			return true
		else: 
			return false
	#for index in get_slide_count():
	#	var push = speed
	#	var collision = get_slide_collision(index)
	#	if collision.collider.is_in_group("entity"):
	#		collision.collider.apply_central_impulse(-collision.normal * push)
