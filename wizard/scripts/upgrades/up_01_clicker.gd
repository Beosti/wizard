class_name Up01ClickerUpgrade
extends Node

signal leveled_up_event;
var level : int;
var title : String = "Clicker Upgrade";
var base_cost : int = 5;
var cost : int;


func _init() -> void:
	level = Main.ref.data.up_clicker_01_level;

func get_description() -> String:
	var description : String = "Increases the amount of mana created by the clicker.
	\nEffectsl +1 mana / level.\nCost: %s" %cost;
	return description;

func get_cost() -> void:
	cost = int (base_cost * pow(1.5, level));

func get_affordable() -> bool:
	if (HandlerMana.ref.mana() > cost):
		return true;
	return false;

func level_up() -> void:
	var error : Error = HandlerMana.ref.consume_mana(cost);
	if not error: 
		level += 1;
		Main.ref.data.up_clicker_01_level = level;
		get_cost();
		leveled_up_event.emit()
