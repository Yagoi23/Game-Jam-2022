extends Node


var Deaths = 0
var nomorerickroll = false
func _process(delta):
	#OS.shell_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
	if Deaths == 69 and nomorerickroll == false:
		OS.shell_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
		nomorerickroll = true
	if Input.is_action_just_pressed("restart"):
		Deaths += 1
