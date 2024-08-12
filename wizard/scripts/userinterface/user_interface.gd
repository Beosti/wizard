class_name UserInterface
extends Control

enum Views {
	GENERATOR,
	CLICKER,
	UPGRADE,
	FOREST,
	MINE
}

signal navigation_requested(view : Views)


func _on_clicker_link_pressed() -> void:
	navigation_requested.emit(Views.CLICKER)

func _on_generator_link_pressed() -> void:
	navigation_requested.emit(Views.GENERATOR)

func _on_upgrade_link_pressed() -> void:
	navigation_requested.emit(Views.UPGRADE);

func _on_forest_link_pressed() -> void:
	navigation_requested.emit(Views.FOREST);

func _on_mine_link_pressed() -> void:
	navigation_requested.emit(Views.MINE);
