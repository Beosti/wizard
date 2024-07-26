class_name ManaGenerator
extends Control


@export var label : Label;
@export var button : Button;
@export var timer : Timer;
@export var mana : int = 0;

func _ready() -> void:
	update_label_text()

func create_mana() -> void:
	mana += 1;
	update_label_text();
	
func update_label_text() -> void:
	label.text = "Mana: %s" %mana;

func begin_generating_mana() -> void:
	timer.start();
	button.disabled = true;

func _on_button_pressed() -> void:
	begin_generating_mana();

func _on_timer_timeout() -> void:
	create_mana()
	pass # Replace with function body.
