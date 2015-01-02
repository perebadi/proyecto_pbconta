json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :id_proveedor, :id_categoria, :cantidad_por_unidad, :precio_coste, :precio_venta, :estado, :unidades, :unidades_minimas
  json.url producto_url(producto, format: :json)
end
