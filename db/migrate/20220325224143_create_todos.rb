class CreateTodos < ActiveRecord::Migration[5.2]
  def change
    create_table :todos do |t|
      t.string :title
      t.integer :todo_category_id
      t.timestamps
    end
  end
end
