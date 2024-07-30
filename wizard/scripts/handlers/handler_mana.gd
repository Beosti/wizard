class_name HandlerMana
extends Node

static var ref : HandlerMana

func _enter_tree() -> void:
	if not ref:
		ref = self;
		return;
	
	queue_free();

# Emitted when mana created
signal mana_created_event(quantity : int)

# Emitted when mana consumed
signal mana_consumed_event(quantity : int)

# Returns the amount of mana available
func mana() -> int:
	return Main.ref.data.mana;

# Create a specific amount of mana
func create_mana(quantity : int) -> void:
	Main.ref.data.mana += quantity;
	mana_created_event.emit(quantity);

# Consume a specific amount of mana
func consume_mana(quantity : int) -> Error:
	if quantity > Main.ref.data.mana:
		return Error.FAILED;
	
	Main.ref.data.mana -= quantity;
	mana_consumed_event.emit(quantity);
	
	return Error.OK;
