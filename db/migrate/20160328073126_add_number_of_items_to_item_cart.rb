class AddNumberOfItemsToItemCart < ActiveRecord::Migration
  def change
    add_column :item_carts, :number_count, :integer
  end
end
