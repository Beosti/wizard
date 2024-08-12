class_name Subzone
extends Control

@export var employed_wizard : Wizard;

func set_wizard(wizard : Wizard):
	employed_wizard = wizard;

func remove_wizard() -> void:
	employed_wizard = null;
