extends KinematicBody2D

export (int) var speed = 10
export (int) var max_y = 10
export (int) var min_y = 0

var velocity = Vector2()

var dir = 1

var base_y
var base_x

func _ready():
	base_x = position.x
	base_y = position.y

func _physics_process(delta): #makes a block that moves horizontaly and changes direction when it hits a wall
	velocity.y = speed * dir
	position.x = base_x
	velocity = move_and_slide(velocity, Vector2.UP, true, 4, PI/4, true)
	if position.y <= (base_y + min_y) or position.y >= (base_y + max_y):
		dir = dir * -1
	
	for index in get_slide_count():
		var push = speed
		var collision = get_slide_collision(index)
		if collision.collider.is_in_group("entity"):
			collision.collider.apply_central_impulse(-collision.normal * push)
