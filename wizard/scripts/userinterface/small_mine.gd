class_name SmallMine
extends Control

@export var label_title : Label;
@export var label_description : RichTextLabel;
@export var button : Button;
@export var timer : Timer;

func _ready() -> void:
	pass;

func update_label_description() -> void:
	label_description.text = "1";
	
func _on_start_button_pressed() -> void:
	timer.start();
	button.disabled = true;

func _on_timer_timeout() -> void:
	create_stone();

func create_stone() -> void:
	HandlerStone.ref.create_stone(1);
