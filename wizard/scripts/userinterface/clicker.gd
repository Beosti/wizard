class_name Clicker
extends Control


@export var view : UserInterface.Views;
@export var user_interface : UserInterface

func _ready() -> void:
	visible = false;
	user_interface.navigation_requested.connect(_on_navigation_request)


# make a seperate for creating mana (later down the line it may have extra effects when pressing the button)
func create_mana() -> void: 
	HandlerMana.ref.create_mana(1);
	
func _on_button_pressed() -> void:
	create_mana();
	
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true;
		return;
	visible = false;
