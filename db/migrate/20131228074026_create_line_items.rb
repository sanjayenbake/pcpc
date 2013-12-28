class CreateLineItems < ActiveRecord::Migration
  def change
    create_table :line_items do |t|
      t.references :inventory_item, index: true
      t.integer :quantity
      t.references :order, index: true

      t.timestamps
    end
  end
end
