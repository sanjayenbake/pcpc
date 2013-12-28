class CreateInventoryItemCartJoins < ActiveRecord::Migration
  def change
    create_table :inventory_item_cart_joins do |t|
      t.references :inventory_item, index: true
      t.references :cart, index: true
      t.integer :quantity

      t.timestamps
    end
  end
end
