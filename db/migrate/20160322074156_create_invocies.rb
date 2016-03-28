class CreateInvocies < ActiveRecord::Migration
  def change
    create_table :invocies do |t|
      t.integer :cart_id
      t.integer :invocice_id
      t.float :total_price

      t.timestamps null: false
    end
  end
end
