class_name LabelMana
extends Label

func _ready() -> void:
	update_text()
	HandlerMana.ref.mana_created_event.connect(update_text);
	HandlerMana.ref.mana_consumed_event.connect(update_text);

	
func update_text(_quantity : int = 1) -> void:
	text = "Mana : %s" %HandlerMana.ref.mana()
