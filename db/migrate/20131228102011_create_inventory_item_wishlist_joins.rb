class CreateInventoryItemWishlistJoins < ActiveRecord::Migration
  def change
    create_table :inventory_item_wishlist_joins, :id => false do |t|
      t.references :inventory_item, index: true
      t.references :wishlist, index: true

      t.timestamps
    end
  end
end
