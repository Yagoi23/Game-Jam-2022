extends Node

enum STATE {ON, OFF}

var Channel0 = STATE.OFF
var Channel1 = STATE.OFF
var Channel2 = STATE.OFF
var Channel3 = STATE.OFF
var Channel4 = STATE.OFF
var Channel5 = STATE.OFF
var Channel6 = STATE.OFF
var Channel7 = STATE.OFF
var Channel8 = STATE.OFF
var Channel9 = STATE.OFF

func _process(delta):
	if Channel0 == STATE.ON:
		print("channel0 = active")
	if Channel0 != STATE.ON:
		print("channel0 = deactive")
#	if Channel1 == STATE.ON:
#		print("channel1 = active")
