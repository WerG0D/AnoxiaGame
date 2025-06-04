extends Node



func _ready() -> void:
	# carrega o tileset
	var tileset = load("res://Levels/layer1.tres") as TileSet
	# pega a fonte do atlas
	var source = tileset.get_source(0) as TileSetAtlasSource

	for i in source.get_tiles_count():
		# para cada tile pega suas coordenadas no atlas
		var coords = source.get_tile_id(i)
		# pega os dados do tile
		var tile_data = source.get_tile_data(coords, 0)
		# e o occluder na camada 0
		var occlusion_polygon = tile_data.get_occluder(0)
		if occlusion_polygon:
			occlusion_polygon.cull_mode = OccluderPolygon2D.CULL_COUNTER_CLOCKWISE
