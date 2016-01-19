class CreateTodos < ActiveRecord::Migration
  def change
    create_table :todos do |t|
      t.string :title, null: false
      t.integer :user_id, null: false
      t.date :due
      t.boolean :completed
      t.boolean :starred

      t.timestamps null: false
    end
  end
end
