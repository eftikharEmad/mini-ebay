class Catigory < ActiveRecord::Base
  has_many :items
  # def self.list_categories
    # Catigory.first(4)
  # end

  # def self.list_sub_categories
    # Catigory.find(:sub_category_id == :category_id)
  # end
end
