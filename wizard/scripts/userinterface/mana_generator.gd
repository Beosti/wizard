class_name ManaGenerator
extends View


@export var button : Button;
@export var timer : Timer;


func _ready() -> void:
	super()
	visible = true;

func create_mana() -> void:
	HandlerMana.ref.create_mana(1);


func begin_generating_mana() -> void:
	timer.start();
	button.disabled = true;

func _on_button_pressed() -> void:
	begin_generating_mana();

func _on_timer_timeout() -> void:
	create_mana()
