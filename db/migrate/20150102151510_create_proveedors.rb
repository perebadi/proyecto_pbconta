class CreateProveedors < ActiveRecord::Migration
  def change
    create_table :proveedors do |t|
      t.string :nombre
      t.string :contacto
      t.string :cargo_contacto
      t.string :direccion
      t.integer :id_ciudad
      t.integer :id_provincia
      t.integer :id_pais
      t.string :cp
      t.string :telefono
      t.string :movil
      t.string :email
      t.string :url

      t.timestamps null: false
    end
  end
end
