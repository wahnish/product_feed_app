class AddUserIdToProducts < ActiveRecord::Migration
# for creating a user w/products
  def change
    add_column :products, :user_id, :integer
  end
end
