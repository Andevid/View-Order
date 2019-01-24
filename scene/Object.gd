extends Area2D

export(int) var number setget setNumber

func _ready():
	set_process(false)
	get_node("Selected").hide()
	

func setNumber(num):
	$Label.text = str(num)
	
	
func _input_event(viewport, event, shape_idx):
	if (event is InputEventMouseButton && event.is_pressed()):
		if get_tree().is_input_handled():
			return
		
		get_tree().set_input_as_handled()
		#raise()
		set_process(true)
		set_process_input(true)
		
		#printt("input event pressed")


func _input(event):
	if (event is InputEventMouseButton && not event.is_pressed()):
		set_process(false)
		set_process_input(false)
		
		#print("input not pressed")

func _process(delta):
	position = get_viewport().get_mouse_position()
	
