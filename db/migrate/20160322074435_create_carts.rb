class CreateCarts < ActiveRecord::Migration
  def change
    create_table :carts do |t|
      t.integer :cart_id
      t.float :paid
      t.float :unpaid
      t.float :total_price
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
