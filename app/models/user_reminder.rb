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
    #time_str = ((self.time).localtime).strftime("%I:%M%p on %b. %d, %Y")
    reminder = "Hi #{self.user.first_name}. It's time to #{self.reminder.body.downcase}."
    message = @client.account.messages.create(
      from: @twilio_number,
      to: self.user.phone,
      body: reminder,
    )
    puts message.to
  end
end
