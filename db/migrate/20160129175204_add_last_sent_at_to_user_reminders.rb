class AddLastSentAtToUserReminders < ActiveRecord::Migration
  def change
    add_column :user_reminders, :last_sent_at, :datetime
  end
end
