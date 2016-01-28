require 'rails_helper'

feature 'update user profile', %{
As an authenticated user
I want to view my account information
So that I may change it
} do

  # Acceptance Criteria:
  # [X] I want to be able to access my account information from any page
  # [X] I want to be able to be able to update my email address or password
  # [ ] I want to be able to add my Wunderlist login at any time
  # [X] I want to be able to edit my name

  let!(:user) { FactoryGirl.create(:user) }

  context 'updating profile', js: true do
    before do
      visit root_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'SIGN IN'
      visit edit_user_registration_path
    end

    scenario "user successfully edits name, email and password" do
      fill_in 'First Name', with: 'Jon'
      fill_in 'Last Name', with: 'Smith'
      fill_in 'user_email', with: 'jon@smith.com'
      fill_in 'Current Password', with: user.password
      fill_in 'user_password', with: 'smithypassword'
      fill_in 'Password Confirmation', with: 'smithypassword'
      click_button 'Update'

      expect(page).to have_content("Your account has been updated successfully")
    end
  end
end
