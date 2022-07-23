extends KinematicBody2D

export (int) var speed = 10

var velocity = Vector2()

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
	
	#for index in get_slide_count():
	#	var push = speed
	#	var collision = get_slide_collision(index)
	#	if collision.collider.is_in_group("entity"):
	#		collision.collider.apply_central_impulse(-collision.normal * push)
