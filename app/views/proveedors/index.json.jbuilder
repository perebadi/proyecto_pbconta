json.array!(@proveedors) do |proveedor|
  json.extract! proveedor, :id, :nombre, :contacto, :cargo_contacto, :direccion, :id_ciudad, :id_provincia, :id_pais, :cp, :telefono, :movil, :email, :url
  json.url proveedor_url(proveedor, format: :json)
end
