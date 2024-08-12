class_name LabelWood
extends Label

# 1. Updates the text
# 2. Hooks the events (creation and consuming of wood) with the update text event
# 3. Everytime those events are called (when wood is created or consumed) the text is updated
func _ready() -> void:
	update_text();
	HandlerWood.ref.wood_created_event.connect(update_text);
	HandlerWood.ref.wood_consumed_event.connect(update_text);
	
func update_text(_quantity : int = 1) -> void:
	text = "Wood: %s" %HandlerWood.ref.wood();
