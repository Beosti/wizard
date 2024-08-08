class_name ComponentUpgrade
extends Control

@export var label_title : Label;
@export var label_description : RichTextLabel;
@export var button : Button;

var upgrade : Upgrade;

func _ready() -> void:
	upgrade = Up01ClickerUpgrade.new();
	
	update_label_title();
	update_label_description();
	update_button();
	
	HandlerMana.ref.mana_created_event.connect(update_button);
	HandlerMana.ref.mana_consumed_event.connect(update_button);
	

	upgrade.leveled_up_event.connect(update_label_title);
	upgrade.leveled_up_event.connect(update_label_description);
	upgrade.leveled_up_event.connect(update_button);

func update_label_title() -> void:
	var text : String = upgrade.title + " (%s)" %upgrade.level;
	label_title.text = text;

func update_label_description() -> void:
	label_description.text = upgrade.get_description();

func update_button(_quantity_mana : int = -1) -> void:
	if (upgrade.get_affordable()):
		button.disabled = false;
		return;
	button.disabled = true;


func _on_purchase_button_pressed() -> void:
	upgrade.level_up();
	pass # Replace with function body.
