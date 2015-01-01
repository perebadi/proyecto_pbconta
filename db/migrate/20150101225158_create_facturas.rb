class CreateFacturas < ActiveRecord::Migration
  def change
    create_table :facturas do |t|
      t.integer :id_cliente
      t.date :fecha_factura
      t.float :base_imponible
      t.float :descuento
      t.float :iva
      t.float :total

      t.timestamps null: false
    end
  end
end
