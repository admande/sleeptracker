require 'spec_helper'

feature 'user signs up', %{
As an unregistered user
I want to be able to create an account
So I can gain access to the app
} do

# Acceptance Criteria:
# [x] If I am not registered, I can see the welcome page
# [X] There is an option to register if I do not have an account
# [X] I must provide a valid email address
# [X] I must confirm my password
# [X] My password is not displayed as I enter it
# [X] If registration is successful, I am presented with a message and will automatically be signed in and gain access to the system
# [X] If my email is already registered, I cannot reregister and will receive an error message

  context 'signing up' do
    before do
      visit root_path
      click_link 'SIGN UP'
    end

    scenario 'specify valid and required information', js: true do
      fill_in 'user_first_name', with: 'Jon'
      fill_in 'user_last_name', with: 'Smith'
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_phone', with: '1111111111'
      fill_in 'user_password', with: 'password'
      fill_in 'user_password_confirmation', with: 'password'
      click_button 'SIGN UP'

      expect(page).to have_content("Welcome! You have signed up successfully.")
      expect(page).to have_content("SIGN OUT")

    end

    scenario 'required informaition is not supplied', js: true do
      click_button 'SIGN UP'

      expect(page).to have_content("can't be blank")
    end

    scenario 'a not valid email address is given', js: true do
      fill_in 'user_email', with: 'userexample.com'
      click_button 'SIGN UP'

      expect(page).to have_content("invalid")
    end

    scenario 'password confirmation does not match confirmation', js: true do
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'somethingdifferent'

      click_button 'SIGN UP'
      expect(page).to have_content("doesn't match")
    end

    scenario 'user tries to register with already used password', js: true do
      fill_in 'First Name', with: 'Jon'
      fill_in 'Last Name', with: 'Smith'
      fill_in 'Phone Number', with: '1111111111'
      fill_in 'user_email', with: 'user@example.com'
      fill_in 'user_password', with: 'password'
      fill_in 'Password Confirmation', with: 'password'
      click_button 'SIGN UP'
      click_link 'SIGN OUT'

      visit root_path
      click_link "SIGN UP"
      fill_in 'user_email', with: 'user@example.com'
      click_button 'SIGN UP'

      expect(page).to have_content("has already been taken")
    end
  end
end
