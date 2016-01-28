class SMSWorker
  include Sidekiq::Worker

  def perform(message)
    message.send_user_reminder
  end
end
