class_name HandlerWood
extends Node

static var ref : HandlerWood

func _enter_tree() -> void:
	if not ref:
		ref = self;
		return;
	queue_free();

# Creation of events
signal wood_created_event(quantity : int);
signal wood_consumed_event(quantity : int);

func wood() -> int:
	return Main.ref.data.wood;

# Quantity wood goes up -> event called
func create_wood(quantity : int) -> void:
	Main.ref.data.wood += quantity;
	wood_created_event.emit(quantity);

# Quantity wood goes down -> check if got enough -> if you do event
func consume_wood(quantity : int) -> Error:
	if (quantity > Main.ref.data.wood):
		return Error.FAILED;
	Main.ref.data.wood -= quantity;
	wood_consumed_event.emit(quantity);
	return Error.OK;
