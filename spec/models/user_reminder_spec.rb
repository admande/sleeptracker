require 'rails_helper'

describe UserReminder do
  it { should belong_to(:user) }
  it { should belong_to(:reminder) }

  describe "send_reminders" do
    let!(:user) { FactoryGirl.create(:user, phone: '7815885556') }
    let!(:reminder) { FactoryGirl.create(:reminder) }
    let!(:user_reminder) { UserReminder.create(user: user, reminder: reminder, time: 1000.years.from_now) }
    let!(:user_reminder2) { UserReminder.create(user: user, reminder: reminder, time: 1.hour.from_now) }

    it "should send all reminders" do
      VCR.use_cassette "send_reminders_cassette", record: :none do
        UserReminder.send_reminders

        expect(user_reminder.reload.last_sent_at.today?).to eq(true)
      end
    end

    xscenario do
      it "should send all reminders" do
        VCR.use_cassette "send_reminders_cassette", record: :none do
          UserReminder.send_reminders

          expect(user_reminder.reload.last_sent_at.today?).to eq(false)
        end
      end
    end
  end
end
