extends Control


func _on_btn_chincheta_pressed() -> void:
	var btn: BtnAdd = %BtnChincheta as BtnAdd
	var forma: PackedScene = btn.forma
	Acciones.add_forma_start(forma)
