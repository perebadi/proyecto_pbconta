class CreateDetalleFacturas < ActiveRecord::Migration
  def change
    create_table :detalle_facturas do |t|
      t.integer :factura
      t.integer :producto
      t.float :unidades
      t.float :subtotal

      t.timestamps null: false
    end
  end
end
