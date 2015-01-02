class AddNombredeMigrationToFactura < ActiveRecord::Migration
  def change
    add_column :facturas, :factura, :integer
  end
end
