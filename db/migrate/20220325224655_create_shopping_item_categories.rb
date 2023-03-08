class CreateShoppingItemCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :shopping_categories do |t|
      t.string :name
    end
  end
end
