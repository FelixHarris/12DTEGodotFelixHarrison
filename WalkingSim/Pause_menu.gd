extends ColorRect

#@onready var animator: AnimationPlayer = $AnimationPlayer
@onready var play_button: Button = find_child("ResumeButton")
@onready var quit_button: Button = find_child("QuitButton")
#@onready var pause_menu = $/root/Pause_Menu
# Called when the node enters the scene tree for the first time.

func _ready():
	play_button.pressed.connect(unpause)
	quit_button.pressed.connect(get_tree().quit)
	get_tree().paused = false

func unpause():
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	#pause_menu.visible = false

func pause():
	get_tree().paused = true
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	#pause_menu.visible = true



#func _input(event):
#	if event.is_action_pressed("pause"):
#		if get_tree().paused:
#			unpause()
#		else:
#			pause()
#	if event.is_action_pressed("ui_cancel"):
#		$PauseMenu.pause()

