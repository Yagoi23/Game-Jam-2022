extends Node2D

var wincon = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _process(delta):
	if wincon == 2:
		print("Woo")

func _on_KillBox_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://TestLevel2 OWEN'S DO NOT TOUCH!!!!.tscn")


func _on_WinBox_body_entered(body):
	wincon += 1


func _on_WinBox_body_exited(body):
	wincon -= 1
