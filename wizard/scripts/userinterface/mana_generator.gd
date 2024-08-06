class_name ManaGenerator
extends Control


@export var button : Button;
@export var timer : Timer;
@export var view : UserInterface.Views;
@export var user_interface : UserInterface

func _ready() -> void:
	visible = true;
	user_interface.navigation_requested.connect(_on_navigation_request)

func create_mana() -> void:
	HandlerMana.ref.create_mana(1);


func begin_generating_mana() -> void:
	timer.start();
	button.disabled = true;

func _on_button_pressed() -> void:
	begin_generating_mana();

func _on_timer_timeout() -> void:
	create_mana()
	pass # Replace with function body.
	
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true;
		return;
	visible = false;
