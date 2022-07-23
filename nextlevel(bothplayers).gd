extends Node2D

var PlayerCount = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
func _process(delta):
	if PlayerCount == 2:
		print("winner winner")

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		PlayerCount += 1


func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		PlayerCount -= 1
