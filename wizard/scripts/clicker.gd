class_name Clicker
extends Control


@export var label : Label;
@export var view : UserInterface.Views;
@export var user_interface : UserInterface

func _ready() -> void:
	update_label_text();
	visible = false;
	user_interface.navigation_requested.connect(_on_navigation_request)

func _process(delta: float) -> void:
	update_label_text();

# make a seperate for creating mana (later down the line it may have extra effects when pressing the button)
func create_mana() -> void: 
	Main.ref.data.mana += 1;
	
func update_label_text() -> void:
	label.text = "Mana: %s" %(Main.ref.data.mana)

	
func _on_button_pressed() -> void:
	create_mana();
	update_label_text();
	pass # Replace with function body.
	
func _on_navigation_request(requested_view : UserInterface.Views) -> void:
	if requested_view == view:
		visible = true;
		return;
	visible = false;
