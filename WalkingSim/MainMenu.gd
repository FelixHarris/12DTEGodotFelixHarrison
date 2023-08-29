extends CanvasLayer

@onready var main: Control = $Main
@onready var settings: Control = $Settings
@onready var ButtonSoundPlayer: AudioStreamPlayer = $ButtonSound


func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)


func _on_button_play_pressed():
	get_tree().change_scene_to_file("res://world.tscn")
	ButtonSoundPlayer.play()


func _on_button_settings_pressed():
	main.visible = false
	settings.visible = true
	ButtonSoundPlayer.play()



func _on_button_quit_pressed():
	get_tree().quit()
	ButtonSoundPlayer.play()





func _on_button_settings_back_pressed():
	main.visible = true
	settings.visible = false
	ButtonSoundPlayer.play()
