extends Control

## Señal para crear una forma nueva
signal crear_forma(path: String, pos: Vector2)

## Estado
enum Estado {NADA, CREAR_FORMA}
var estado: Estado = Estado.NADA


func  _process(_delta: float) -> void:
	if estado == Estado.CREAR_FORMA:
		if Input.is_action_just_pressed("click"):
			crear_chincheta(get_global_mouse_position())
			estado = Estado.NADA
			Input.set_default_cursor_shape(Input.CURSOR_ARROW)
			

func _on_add_chincheta_pressed() -> void:
	estado = Estado.CREAR_FORMA
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)

func crear_chincheta(pos: Vector2) -> void:
	crear_forma.emit("res://componentes/chincheta.tscn", pos)
