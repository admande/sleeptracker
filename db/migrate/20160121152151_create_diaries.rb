class CreateDiaries < ActiveRecord::Migration
  def change
    create_table :diaries do |t|
      t.integer :user_id, null: false
      t.date :date, null: false
      t.float :sentiment
      t.text :body, null: false
    end
  end
end
