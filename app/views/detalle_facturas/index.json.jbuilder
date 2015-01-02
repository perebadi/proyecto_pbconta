json.array!(@detalle_facturas) do |detalle_factura|
  json.extract! detalle_factura, :id, :factura, :producto, :unidades, :subtotal
  json.url detalle_factura_url(detalle_factura, format: :json)
end
