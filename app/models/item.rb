class Item < ApplicationRecord
  has_many :cartitems
  has_many :carts, through: :cartitem
end
