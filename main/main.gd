extends Node


func crear_forma(path: String, pos: Vector2) -> void:
	var c: Resource = load(path)


func _on_caja_herramientas_crear_forma(path: String, pos: Vector2) -> void:
	crear_forma(path, pos)
