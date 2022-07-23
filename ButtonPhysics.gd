extends KinematicBody2D

onready var raycast = $RayCast2D

export (int) var max_position_y = 1
export (int) var max_position_x = 1

export (int) var min_position_y = -1
export (int) var min_position_x = -1

func _physics_process(delta):
	if raycast.is_colliding():
		if position.y <= 2:
			position.y += 1
	elif !raycast.is_colliding():
		if position.y >= 0:
			position.y -= 1
	#else:
		#print("not active")
