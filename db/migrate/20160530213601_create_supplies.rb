class CreateSupplies < ActiveRecord::Migration
  def change
    create_table :supplies do |t|
      t.string :name
      t.integer :amount
      t.string :unit
      t.integer :adjust

      t.timestamps null: false
    end
  end
end
