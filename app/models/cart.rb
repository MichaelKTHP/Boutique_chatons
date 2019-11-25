class Cart < ApplicationRecord
  has_one :users
  has_one :order
  has_many :cartitems
  has_many :items, through: :cartitem
end
