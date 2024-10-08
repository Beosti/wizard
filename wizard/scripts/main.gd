class_name Main
extends Node
## Main node of the game

static var ref : Main

func _singleton_check() -> void:
	if not ref:
		ref = self;
		return;
	
	queue_free();
	
var data : Data

func _enter_tree() -> void:
	_singleton_check();
	data = Data.new();
	SaveSystem.load_data();


func _on_save_timer_timeout() -> void:
	SaveSystem.save_data();
