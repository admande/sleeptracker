namespace :twilio do
  desc "Send text at certain times"
  task :send_user_reminder => :environment do
    UserReminder.send_reminders
  end
end
