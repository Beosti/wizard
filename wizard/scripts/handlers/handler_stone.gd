class_name HandlerStone
extends Node

static var ref : HandlerStone;

func _enter_tree() -> void:
	if not ref:
		ref = self;
		return;
	queue_free();

signal stone_created_event(quantity : int);
signal stone_consumed_event(quantity : int);

func stone() -> int:
	return Main.ref.data.stone;

func create_stone(quantity : int) -> void:
	Main.ref.data.stone += quantity;
	stone_created_event.emit(quantity);

func consume_stone(quantity : int) -> Error:
	if quantity > Main.ref.data.stone:
		return Error.FAILED;
	Main.ref.data.stone -= quantity;
	stone_consumed_event.emit(quantity);
	
	return Error.OK;
