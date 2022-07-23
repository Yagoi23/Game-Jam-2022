extends Node2D

var wincon = 0
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if wincon == 2:
		print("woo")



func _on_Area2D_body_entered(body):
	if body.is_in_group("box"):
		wincon +=1


func _on_Area2D_body_exited(body):
	if body.is_in_group("box"):
		wincon -=1
