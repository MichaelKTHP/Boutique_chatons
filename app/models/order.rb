class Order < ApplicationRecord

	belongs_to :cart
    has_many :items, through: :cart

end
