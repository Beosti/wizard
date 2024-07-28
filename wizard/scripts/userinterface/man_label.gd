class_name LabelMana
extends Label

func _process(delta: float) -> void:
	update_text();
	
func update_text() -> void:
	text = "Mana : %s" %Main.ref.data.mana;
