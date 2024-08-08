class_name Upgrade
extends Node

signal leveled_up_event;
var level : int;
var title : String = "Not Defined";
var base_cost : int = -1;
var cost : int = -1;

func description() -> String:
	return "Description not defined.";

func get_cost() -> void:
	printerr("Get cost method undefined.");

func get_affordable() -> bool:
	if (HandlerMana.ref.mana() > cost):
		return true;
	return false;

func level_up() -> void:
	printerr("level_up() method not defined");
