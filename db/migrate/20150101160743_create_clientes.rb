class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :primer_apellido
      t.string :segundo_apellido
      t.string :razon_social
      t.string :tipo
      t.string :cif_nif
      t.string :cp
      t.integer :id_poblacion
      t.integer :id_provincia
      t.string :direccion
      t.string :telefono
      t.string :movil
      t.string :email

      t.timestamps null: false
    end
  end
end
