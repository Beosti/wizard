class_name SaveSystem

const PATH : String = "user://save.tres"

const SHOULD_LOAD : bool = true;

static func save_data() -> void:
	ResourceSaver.save(Main.ref.data, PATH)
	pass;

static func load_data() -> void:
	if not SHOULD_LOAD:
		return;
	if ResourceLoader.exists(PATH):
		Main.ref.data = load(PATH);
