class CreateProductShipments < ActiveRecord::Migration
  def change
    create_table :product_shipments do |t|
      t.integer :sent
      t.integer :return
      t.references :product, index: true, foreign_key: true
      t.references :customer, index: true, foreign_key: true
      t.date :ship_date

      t.timestamps null: false
    end
  end
end
