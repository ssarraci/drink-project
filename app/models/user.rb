class User < ApplicationRecord
   has_many :orders
   has_many :drinks, through: :orders

   enum role: [:client, :bartender]
end
