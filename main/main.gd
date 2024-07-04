extends Node

func _ready() -> void:
	Acciones.add_forma.connect(_on_add_forma)

func _on_add_forma(forma_scn: PackedScene, pos: Vector2) -> void:
	var forma: Forma = forma_scn.instantiate() as Forma
	forma.position = pos
	%Escritorio.add_child(forma)
