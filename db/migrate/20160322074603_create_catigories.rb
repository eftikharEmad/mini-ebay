class CreateCatigories < ActiveRecord::Migration
  def change
    create_table :catigories do |t|
      t.integer :category_id
      t.string :category_name
      t.integer :sub_category_id
      t.integer :item_id

      t.timestamps null: false
    end
  end
end
