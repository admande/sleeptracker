class ChangeTimeColumnInUserReminders < ActiveRecord::Migration
  def up
    remove_column :user_reminders, :time
    add_column :user_reminders, :time, :datetime, null: false
  end

  def down
    remove_column :user_reminders, :time
    add_column :user_reminders, :time, :time, null: false
  end
end
