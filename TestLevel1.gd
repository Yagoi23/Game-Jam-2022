extends Node2D

var wincon = 0

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


func _process(delta):
	if Input.is_action_pressed("restart"):
		get_tree().change_scene("res://TestLevel1.tscn")
	if wincon == 2:
		print("Winner winner chicken dinner")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_KillBox1_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://TestLevel1.tscn")
	pass


func _on_KillBox2_body_entered(body):
	if body.is_in_group("player"):
		get_tree().change_scene("res://TestLevel1.tscn")
	pass


func _on_WinZone_body_entered(body):
	if body.is_in_group("player"):
		wincon += 1


func _on_WinZone_body_exited(body):
	if body.is_in_group("player"):
		wincon -=1
