extends Node

signal add_forma(forma: PackedScene, pos: Vector2)

enum Estado {
	ESPERA, # Esperando a que el usuario inicie alguna accion
	ADD_FORMA # Añadiendo una forma. Debemos esperar a que el usuario haga click en un sitio.
}

var estado_actual: Estado = Estado.ESPERA
var forma_pend: PackedScene

func _process(_delta: float) -> void:
	if estado_actual == Estado.ADD_FORMA:
		if Input.is_action_just_pressed("click"):
			add_forma_end(forma_pend, get_viewport().get_mouse_position())

func add_forma_start(forma: PackedScene) -> void:
	estado_actual = Estado.ADD_FORMA
	forma_pend = forma

func add_forma_end(forma: PackedScene, pos: Vector2) -> void:
	add_forma.emit(forma, pos)
	estado_actual = Estado.ESPERA
	forma_pend = null
