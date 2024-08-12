class_name SmallForest
extends Subzone

@export var label_title : Label;
@export var label_description : RichTextLabel;
@export var button : Button;
@export var timer : Timer;

func _ready() -> void:
	pass;

func _on_start_button_pressed() -> void:
	timer.start();
	button.disabled = true;

func _on_timer_timeout() -> void:
	create_wood();

func create_wood() -> void:
	HandlerWood.ref.create_wood(1);
