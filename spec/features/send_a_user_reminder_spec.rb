require 'rails_helper'

feature 'send a sms message' do
  xscenario 'user sends a message', :vcr do
    message = FactoryGirl.build(:message)

    visit reminders_path
    select message.sender.username, from: "message[sender_id]"
    select message.recipient.username, from: "message[recipient_id]"
    fill_in "Body", with: message.body
    fill_in "Media url", with: message.media_url
    click_on "Send Message"

    expect(page).to have_content("Your message to #{message.recipient.username} has been sent!")
  end
end
