class CreateSupplyShipments < ActiveRecord::Migration
  def change
    create_table :supply_shipments do |t|
      t.integer :rcvd
      t.integer :return
      t.references :supply, index: true, foreign_key: true
      t.references :supplier, index: true, foreign_key: true
      t.date :ship_date

      t.timestamps null: false
    end
  end
end
