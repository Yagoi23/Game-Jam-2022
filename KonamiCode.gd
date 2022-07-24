extends Node

var correct_counter = 0

func _input(event):
	if Input.is_action_just_pressed("p2_up") and (correct_counter == 0 or correct_counter == 1):
		correct_counter += 1
		print("up")
	elif Input.is_action_just_pressed("p2_up") and not (correct_counter == 0 or correct_counter == 1):
		correct_counter = 0
		print("reset")
	elif Input.is_action_just_pressed("down") and (correct_counter == 2 or correct_counter == 3):
		correct_counter += 1
		print("down")
	elif Input.is_action_just_pressed("down") and not (correct_counter == 2 or correct_counter == 3):
		correct_counter = 0
		print("reset")
	elif Input.is_action_just_pressed("p2_left") and (correct_counter == 4 or correct_counter == 6):
		correct_counter += 1
		print("left")
	elif Input.is_action_just_pressed("p2_left") and not (correct_counter == 4 or correct_counter == 6):
		correct_counter = 0
		print("reset")
	elif Input.is_action_just_pressed("p2_right") and (correct_counter == 5 or correct_counter == 7):
		correct_counter += 1
		print("right")
	elif Input.is_action_just_pressed("p2_right") and not (correct_counter == 5 or correct_counter == 7):
		correct_counter =0
		print("reset")
	elif Input.is_action_just_pressed("b") and (correct_counter == 8):
		correct_counter += 1
		print("b")
	elif Input.is_action_just_pressed("b") and (correct_counter != 8):
		correct_counter = 0
		print("reset")
	elif Input.is_action_just_pressed("p1_left") and (correct_counter == 9):
		correct_counter += 1
		print("a")
	elif Input.is_action_just_pressed("p1_left") and (correct_counter != 9):
		correct_counter = 0
		print("reset")

