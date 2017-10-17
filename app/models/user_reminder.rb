class UserReminder < ActiveRecord::Base
  belongs_to :user
  belongs_to :reminder

  validates :user_id, presence: true, uniqueness: { scope: :reminder_id }
  validates :reminder_id, presence: true
  validates :time, presence: true

  # Notify our appointment attendee X minutes before the appointment time
  def send_user_reminder
    @twilio_number = ENV['TWILIO_NUMBER']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']
    reminder = "Hi #{self.user.first_name}. It's time to #{self.reminder.body.downcase}"
    message = @client.api.account.messages.create(
      from: @twilio_number,
      to: self.user.phone,
      body: reminder
    )
    message
  end

  def self.send_reminders
    UserReminder.all.each do |user_reminder|
      if user_reminder.has_not_been_sent_today? && user_reminder.reminder_time_passed?
        user_reminder.send_user_reminder
        user_reminder.update_attributes(last_sent_at: Time.current)
      end
    end
  end

  def reminder_time_passed?
    time_function = Time.current.utc - time.utc
    0 < time_function && time_function < 10
  end

  def has_not_been_sent_today?
    last_sent_at.blank? || !last_sent_at.today?
  end
end
