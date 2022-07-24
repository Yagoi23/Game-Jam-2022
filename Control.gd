extends Node

var Current_Level = 1
var Deaths = 0
var nomorerickroll = false
func _process(delta):
	#OS.shell_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
	if Deaths == 69 and nomorerickroll == false:
		OS.shell_open("https://www.youtube.com/watch?v=dQw4w9WgXcQ")
		nomorerickroll = true
	if Input.is_action_just_pressed("restart"):
		Deaths += 1
		get_tree().reload_current_scene()
	if Input.is_action_just_pressed("exit"):
		get_tree().change_scene("res://StartMenu.tscn")

func ded():
	Deaths +=1
	get_tree().reload_current_scene()
