class_name Up01ClickerUpgrade
extends Node

var level : int = 0;
var title : String = "Clicker Upgrade";
var base_cost : int = 5;

signal leveld_up_event;

func _init() -> void:
	level = Main.ref.data.up_clicker_01_level;

func get_description() -> String:
	var description : String = "Increases the amount of mana created by the clicker.
	\nEffectsl +1 mana / level.\nCost: %s" %get_cost();
	return description;

func get_cost() -> int:
	return int (base_cost * pow(1.5, level));

func get_affordable() -> bool:
	if (HandlerMana.ref.mana() > get_cost()):
		return true;
	return false;

func level_up() -> void:
	var error : Error = HandlerMana.ref.consume_mana(get_cost());
	if not error: 
		level += 1;
		Main.ref.data.up_clicker_01_level = level;
		
		leveld_up_event.emit()
