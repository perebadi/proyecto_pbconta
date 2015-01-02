class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.integer :id_proveedor
      t.integer :id_categoria
      t.float :cantidad_por_unidad
      t.float :precio_coste
      t.float :precio_venta
      t.string :estado
      t.float :unidades
      t.float :unidades_minimas

      t.timestamps null: false
    end
  end
end
