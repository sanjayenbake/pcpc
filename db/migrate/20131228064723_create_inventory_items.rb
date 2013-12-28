class CreateInventoryItems < ActiveRecord::Migration
  def change
    create_table :inventory_items do |t|
      t.references :store, index: true
      t.text :description
      t.boolean :featured
      t.string :private_name
      t.integer :price
      t.string :public_name

      t.timestamps
    end
  end
end
