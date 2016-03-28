class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :item_id
      t.string :item_name
      t.string :item_color
      t.integer :item_size
      t.string :item_preice
      t.integer :category_id

      t.timestamps null: false
    end
  end
end
