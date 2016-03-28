class ItemCart < ActiveRecord::Base
  belongs_to :items
  belongs_to :carts
end
