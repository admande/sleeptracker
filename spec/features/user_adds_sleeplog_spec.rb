require 'spec_helper'

feature 'user adds sleeplog', %{
  As an authenticated user
  I want to be able to input my sleep information
  So that I can add it to my sleep log
} do

# Acceptance Criteria:
# [ ] I can input the amount of sleep I got on any night within the last week
# [ ] I can optionally include information about the quality of my sleep, time I got into bed, time I fell asleep, time I got out of bed, and if I took a sleeping pill
# [X] I can record notes on my sleep to help identify patterns in why I slept poorly or well

let!(:user) { FactoryGirl.create(:user)}

context 'signing in' do
    scenario "user adds a sleeplog", js: true do
      visit root_path
      click_link 'Sign In'
      fill_in 'Email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'Log in'
      save_and_open_page
      click_link "Sleeplogs"
      click_link "Add Sleeplog"
      select "January", from: "sleeplog_date_2i"
      select "30", from: "sleeplog_date_3i"
      find(:xpath, "//input[@id='sleeplog_hours']").set 4
      fill_in "Notes", with: "Bad"
      check "sleeplog_sleeping_pill"
      click_button 'Create Sleeplog'

      click_link "Sleeplogs"
      click_link "Show Sleeplogs"
      expect(page).to have_content("2016-01-30")
    end
  end
end
