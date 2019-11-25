class User < ApplicationRecord
   has_many :orders
   has_many :items, through: :orders
   belongs_to :cart
   has_many :items, through: :cart


end
