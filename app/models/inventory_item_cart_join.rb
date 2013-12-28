class InventoryItemCartJoin < ActiveRecord::Base
  belongs_to :inventory_item
  belongs_to :cart
end
