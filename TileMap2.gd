extends TileMap


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if ButtonLogicState.Channel0 == ButtonLogicState.STATE.ON:
		print("yes")
		rotation_degrees += 0.5
	if ButtonLogicState.Channel1 == ButtonLogicState.STATE.ON:
		print("also yes")
		rotation_degrees += -0.5
