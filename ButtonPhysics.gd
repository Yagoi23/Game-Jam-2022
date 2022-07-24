extends Node2D
#class CustomButton:

onready var raycast = $KinematicBody2D/RayCast2D
onready var raycast2 = $KinematicBody2D/RayCast2D2
onready var raycast3 = $KinematicBody2D/RayCast2D3
onready var raycast4 = $KinematicBody2D/RayCast2D4
onready var raycast5 = $KinematicBody2D/RayCast2D5
onready var kinematicbody = $KinematicBody2D
onready var sound = $AudioStreamPlayer2D

export (int) var Channelid = 0
#var Channel = "Channel" + str(Channelid)

enum STATE {ON, OFF, IDLE}
var button_state = STATE.OFF

func _physics_process(delta):
	is_raycast_colliding()
	if kinematicbody.position.y <= 2:
		sound.play()
		button_state = STATE.OFF
		Global_Deactivate()
	if kinematicbody.position.y >= 0:
		button_state = STATE.ON
		
		Global_Activate()
func is_raycast_colliding():
	if raycast.is_colliding() or raycast2.is_colliding() or raycast3.is_colliding() or raycast4.is_colliding() or raycast5.is_colliding():
		if kinematicbody.position.y <= 2:
			kinematicbody.position.y += 1
	elif !raycast.is_colliding() or !raycast2.is_colliding() or !raycast3.is_colliding() or !raycast4.is_colliding() or !raycast5.is_colliding():
		if kinematicbody.position.y >= 0:
			kinematicbody.position.y -= 1

	#elif button_state != STATE.IDLE:
		#button_state = STATE.OFF
	#else:
		#button_state = STATE.IDLE
		#print("off")
		#Global_Deactivate()
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
