require 'rails_helper'

feature 'user chooses reminder', %{
  As an authenticated user
  I want to select reminders that I’d like to receive
  So that I can form better habits
} do

# Acceptance Criteria:
# [x] I can access my reminders from any page
# [x] I can select from a list of reminders which ones I would like to receive
# [x] I can select a time to be reminded of each event

  let!(:user) { FactoryGirl.create(:user) }

  context 'choosing reminders' do
    xscenario "user chooses a reminder", js: true do
      visit root_path
      sign_in_as(user)
      click_link "My Reminders"
      find_by_id('reminder_id_1').find_link('Power down').click
      select "20", from: "user_reminder_time_4i"
      select "20", from: "user_reminder_time_5i"
      check "weekend_disable"
      click_button 'Create User reminder'

      expect(page).to_not have_content("Weekend Disable")
    end
  end
end
