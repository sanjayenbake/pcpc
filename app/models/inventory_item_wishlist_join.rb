class InventoryItemWishlistJoin < ActiveRecord::Base
  belongs_to :inventory_item
  belongs_to :wishlist
end
