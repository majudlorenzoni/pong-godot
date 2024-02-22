class_name SaverLoader
extends Node
@onready var player = %Player
@onready var player2 = %Player2
func _on_save_button_pressed():
	var file = FileAccess.open("res://savegame.data", FileAccess.WRITE)
	file.store_var(player.global_position)
	file.store_var(player2.global_position)
	file.store_var(Main.p1_score)
	file.store_var(Main.p2_score)
	file.close()

func _on_load_button_pressed():
	var file = FileAccess.open("res://savegame.data", FileAccess.READ)
	player.global_position = file.get_var()
	player2.global_position = file.get_var()
	Main.p1_score = file.get_var()
	Main.p2_score = file.get_var()
	file.close()
