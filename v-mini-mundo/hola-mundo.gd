extends Node3D

func _ready() -> void:
	print("Mini Mundo iniciado")

	# Creamos una cámara
	var camara = Camera3D.new()
	camara.position = Vector3(0, 8, 10)
	camara.look_at(Vector3(0, 0, 0))
	camara.current = true
	add_child(camara)

	# Creamos varios bloques
	for x in range(-5, 6):
		for z in range(-5, 6):
			# Creamos un bloque
			var bloque = MeshInstance3D.new()

			# Creamos la forma del bloque
			var malla = BoxMesh.new()
			bloque.mesh = malla

			# Colocamos el bloque
			bloque.position = Vector3(x, 0, z)

			# Añadimos el bloque al mundo
			add_child(bloque)
