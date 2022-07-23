extends Node2D

onready var collisonshape = $StaticBody2D/CollisionShape2D
onready var colorrect = $StaticBody2D/ColorRect
onready var doorsprite = $StaticBody2D/ColorRect/Door

export (bool) var reverse = false

export (int) var Channelid = 0

func _process(delta):
	var active = check_active()
	if active != reverse:
		colorrect.color = Color(1,1,1,0.3)
		doorsprite.hide()
		collisonshape.disabled = true
	else:
		colorrect.color = Color(0,1,0)
		doorsprite.show()
		collisonshape.disabled = false

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
