class CreateUserReminders < ActiveRecord::Migration
  def change
    create_table :user_reminders do |t|
      t.integer :user_id
      t.integer :reminder_id
      t.time :time
      t.boolean :weekend_disable, default: false
    end
  end
end
