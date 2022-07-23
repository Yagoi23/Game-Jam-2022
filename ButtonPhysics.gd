extends Node2D
#class CustomButton:

onready var raycast = $KinematicBody2D/RayCast2D
onready var kinematicbody = $KinematicBody2D

export (int) var Channelid = 0
#var Channel = "Channel" + str(Channelid)

enum STATE {ON, OFF}
var button_state = STATE.OFF

func _physics_process(delta):
	if raycast.is_colliding():
		if kinematicbody.position.y <= 2:
			kinematicbody.position.y += 1
	elif !raycast.is_colliding():
		if kinematicbody.position.y >= 0:
			kinematicbody.position.y -= 1
	if kinematicbody.position.y >= 0:
		button_state = STATE.ON
		Global_Activate()
	else:
		button_state = STATE.OFF
		#print("off")
		Global_Deactivate()
	#else:
		#print("not active")
func Global_Activate():
	if Channelid == 0:
		ButtonLogicState.Channel0 = ButtonLogicState.STATE.ON
	elif Channelid == 1:
		ButtonLogicState.Channel1 = ButtonLogicState.STATE.ON
	elif Channelid == 2:
		ButtonLogicState.Channel2 = ButtonLogicState.STATE.ON
	elif Channelid == 3:
		ButtonLogicState.Channel3 = ButtonLogicState.STATE.ON
	elif Channelid == 4:
		ButtonLogicState.Channel4 = ButtonLogicState.STATE.ON
	elif Channelid == 5:
		ButtonLogicState.Channel5 = ButtonLogicState.STATE.ON
	elif Channelid == 6:
		ButtonLogicState.Channel6 = ButtonLogicState.STATE.ON
	elif Channelid == 7:
		ButtonLogicState.Channel7 = ButtonLogicState.STATE.ON
	elif Channelid == 8:
		ButtonLogicState.Channel8 = ButtonLogicState.STATE.ON
	elif Channelid == 9:
		ButtonLogicState.Channel9 = ButtonLogicState.STATE.ON
func Global_Deactivate():
	if Channelid == 0:
		ButtonLogicState.Channel0 = ButtonLogicState.STATE.OFF
	elif Channelid == 1:
		ButtonLogicState.Channel1 = ButtonLogicState.STATE.OFF
	elif Channelid == 2:
		ButtonLogicState.Channel2 = ButtonLogicState.STATE.OFF
	elif Channelid == 3:
		ButtonLogicState.Channel3 = ButtonLogicState.STATE.OFF
	elif Channelid == 4:
		ButtonLogicState.Channel4 = ButtonLogicState.STATE.OFF
	elif Channelid == 5:
		ButtonLogicState.Channel5 = ButtonLogicState.STATE.OFF
	elif Channelid == 6:
		ButtonLogicState.Channel6 = ButtonLogicState.STATE.OFF
	elif Channelid == 7:
		ButtonLogicState.Channel7 = ButtonLogicState.STATE.OFF
	elif Channelid == 8:
		ButtonLogicState.Channel8 = ButtonLogicState.STATE.OFF
	elif Channelid == 9:
		ButtonLogicState.Channel9 = ButtonLogicState.STATE.OFF
