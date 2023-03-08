class AddUserIdColumnToShoppingItems < ActiveRecord::Migration[5.2]
  def change
    add_column :shopping_items, :user_id, :integer
  end
end
