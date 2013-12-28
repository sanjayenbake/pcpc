class CreateInventoryItemTypes < ActiveRecord::Migration
  def change
    create_table :inventory_item_types do |t|
      t.references :inventory_item_id, index: true
      t.string :variant

      t.timestamps
    end
  end
end
