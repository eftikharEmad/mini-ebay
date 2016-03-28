class AddIndexToItems < ActiveRecord::Migration
  def change
    add_index :items, [:id, :item_name], unique: true
  end
end
