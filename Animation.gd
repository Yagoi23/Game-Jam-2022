extends AnimationPlayer


# Declare member variables here. Examples:
onready var player = get_parent()
var sprite
var Idle = preload("res://assets/red_hand_idle.png")
var Running = preload("res://assets/red_hand_walking.png")
var Jumping = preload("res://assets/red_hand_jump.png")
var Idle2 = preload("res://assets/blue_hand_idle.png")
var Running2 = preload("res://assets/blue_hand_walking.png")
var Jumping2 = preload("res://assets/blue_hand_jump.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	#if player.player_num == 1:	
	sprite = player.get_node("Sprite")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func on_state_changed():
	if player.player_state == 2 and player.player_num != 1:
		sprite.texture = Idle
		sprite.vframes = 4
	elif player.player_state == 2 and player.player_num == 1:
		sprite.texture = Idle2
		sprite.vframes = 4
	elif player.player_state == 0 and player.player_num != 1:
		sprite.texture = Running
		sprite.vframes = 7
	elif player.player_state == 0 and player.player_num == 1:
		sprite.texture = Running2
		sprite.vframes = 7
	elif player.player_state == 1 and player.player_num != 1:
		sprite.texture = Jumping
		sprite.vframes = 3
	elif player.player_state == 1 and player.player_num == 1:
		sprite.texture = Jumping2
		sprite.vframes = 3
	elif player.player_state == 3 and player.player_num != 1:
		sprite.texture = Jumping
		sprite.vframes = 3
	elif player.player_state == 3 and player.player_num == 1:
		sprite.texture = Jumping2
		sprite.vframes = 3
		
	play(str(player.player_state))
