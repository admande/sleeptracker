namespace :twilio do
  desc "Send text at certain times"
  task :send_user_reminder => :environment do
    UserReminder.all.each do |user_reminder|
      if Time.now == user_reminder.time
        user_reminder.send_user_reminder
      end
    end
  end
end
