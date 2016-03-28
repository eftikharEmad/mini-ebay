class Item < ActiveRecord::Base
  belongs_to :categories
  has_many :item_carts
  has_many :carts, through: :item_carts

end
