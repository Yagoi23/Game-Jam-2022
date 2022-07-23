extends Node2D

var PlayerCount = 0
onready var sound = $AudioStreamPlayer
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("restart"):
		get_tree().reload_current_scene()

func _on_Area2D_body_entered(body):
	if body.is_in_group("player"):
		PlayerCount += 1
		if PlayerCount == 2:
			print("winner winner")
			#sound.play()
			GlobalControl.Current_Level += 1
			get_tree().change_scene("res://Level"+str(GlobalControl.Current_Level)+".tscn")


func _on_Area2D_body_exited(body):
	if body.is_in_group("player"):
		PlayerCount -= 1
