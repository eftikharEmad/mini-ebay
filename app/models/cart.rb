class Cart < ActiveRecord::Base
  # relation with users many-to-one
  # relation with items many-to-many
  has_many :item_carts
  has_many :items, through: :item_carts
  belongs_to :users
end
