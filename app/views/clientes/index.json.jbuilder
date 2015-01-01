json.array!(@clientes) do |cliente|
  json.extract! cliente, :id, :nombre, :primer_apellido, :segundo_apellido, :razon_social, :tipo, :cif_nif, :cp, :id_poblacion, :id_provincia, :direccion, :telefono, :movil, :email
  json.url cliente_url(cliente, format: :json)
end
