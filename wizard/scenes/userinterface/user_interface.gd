class_name UserInterface
extends Control

enum Views {
	GENERATOR,
	CLICKER,
}

signal navigation_requested(view : Views)


func _on_clicker_link_pressed() -> void:
	navigation_requested.emit(Views.CLICKER)


func _on_generator_link_pressed() -> void:
	navigation_requested.emit(Views.GENERATOR)
