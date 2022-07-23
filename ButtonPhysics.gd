extends KinematicBody2D
#class CustomButton:

onready var raycast = $RayCast2D

export var Channelid := 1
var Channel = "Channel" + str(Channelid)

export (int) var max_position_y = 1
export (int) var max_position_x = 1

export (int) var min_position_y = -1
export (int) var min_position_x = -1

enum STATE {ON, OFF}
var button_state = STATE.OFF

func _physics_process(delta):
	if raycast.is_colliding():
		if position.y <= 2:
			position.y += 1
	elif !raycast.is_colliding():
		if position.y >= 0:
			position.y -= 1
	if position.y >= 0:
		button_state = STATE.ON
		#print("on")
		ButtonLogicState.Channel0 = ButtonLogicState.STATE.ON
		ButtonLogicState.Channel1 = ButtonLogicState.STATE.OFF
	else:
		button_state = STATE.OFF
		#print("off")
		ButtonLogicState.Channel0 = ButtonLogicState.STATE.OFF
		ButtonLogicState.Channel1 = ButtonLogicState.STATE.ON
	#else:
		#print("not active")
func Global_Activate():
	pass

func Match():
	pass
