class_name Main
extends Node
## Main node of the game

static var ref : Main

func _enter_tree() -> void:
	if not ref:
		ref = self;
		return;
	
	queue_free();
	
var data : Data
