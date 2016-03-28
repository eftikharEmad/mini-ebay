class AddUserIdToInvoices < ActiveRecord::Migration
  def change
    add_column :invocies, :user_id, :integer
  end
end
