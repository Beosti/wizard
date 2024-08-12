class_name LabelStone
extends Label

func _ready() -> void:
	update_text();
	HandlerStone.ref.stone_created_event.connect(update_text);
	HandlerStone.ref.stone_consumed_event.connect(update_text);

func update_text(_quantity : int = 1) -> void:
	text = "Stone: %s" %HandlerStone.ref.stone();
