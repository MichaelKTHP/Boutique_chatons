class User < ApplicationRecord
   
        
   has_many :orders, through: :cart
   has_many :items, through: :cart


end
