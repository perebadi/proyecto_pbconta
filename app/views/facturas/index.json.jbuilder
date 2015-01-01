json.array!(@facturas) do |factura|
  json.extract! factura, :id, :id_cliente, :fecha_factura, :base_imponible, :descuento, :iva, :total
  json.url factura_url(factura, format: :json)
end
