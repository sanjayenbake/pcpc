class LineItem < ActiveRecord::Base
  belongs_to :inventory_item
  belongs_to :order
end
