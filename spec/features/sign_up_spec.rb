require 'spec_helper'

feature 'user signs up', %Q{
As an unregistered user
I want to be able to create an account
So I can gain access to the app
} do

# Acceptance Criteria:
# [X] There is an option to register if I do not have an account
# [x] If I am not registered, I can see the welcome page
# [ ] I must provide a valid email address
# [ ] I must confirm my password
# [ ] My password is not displayed as I enter it
# [ ] If my email is already registered, I cannot reregister and will receive an error message
# [ ] If registration is successful, I am presented with a message and will automatically be signed in and gain access to the system
  context 'signing up' do
    before do
      visit root_path
      click_link 'Sign Up'
    end

    scenario 'specify valid and required information' do

      fill_in 'First Name', with: 'Jon'
      fill_in 'Last Name', with: 'Smith'
      fill_in 'Email', with: 'user@example.com'
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'password'
      click_button 'Sign Up'

      expect(page).to have_content("Welcome! You have signed up successfully.")
      expect(page).to have_content("Sign Out")

    end

    scenario 'required informaition is not supplied' do
      click_button 'Sign Up'

      expect(page).to have_content("can't be blank")
      expect(page).to_not have_content("Sign Out")
    end

    scenario 'a not valid email address is given' do
      fill_in 'Email', with: 'userexample.com'
      click_button 'Sign Up'

      expect(page).to have_content("invalid")
    end

    scenario 'password confirmation does not match confirmation' do
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'somethingdifferent'

      click_button 'Sign Up'
      expect(page).to have_content("doesn't match")
      expect(page).to_not have_content("Sign Out")
    end
  end
end
