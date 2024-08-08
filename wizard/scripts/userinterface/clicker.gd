class_name Clicker
extends View


func _ready() -> void:
	super();
	visible = false;


# make a seperate for creating mana (later down the line it may have extra effects when pressing the button)
func create_mana() -> void: 
	HandlerMana.ref.trigger_clicker();
	
func _on_button_pressed() -> void:
	create_mana();
