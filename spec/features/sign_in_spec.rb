require 'spec_helper'

feature 'user signs in', %{
As an unauthenticated user
I want to be able to sign in
So that I can gain access to the app
} do

# Acceptance Criteria:
# [X] There is an option to sign in if I am not signed in
# [X] My password is not displayed as I enter it
# [X] If I've entered the right credentials, I receive an onscreen message that I'm signed in, and I've gained access to the system
# [X] If I'm already authenticated, I don't have the option to sign in
# [X] If I didn't enter valid credentials, I receive an error message and I am left unauthenticated

  let!(:user) { FactoryGirl.create(:user) }

  context 'signing in' do
    before do
      visit root_path
    end

    scenario "user signs in with valid email and password", js: true do
      visit root_path
      fill_in 'user_email', with: user.email
      fill_in 'user_password', with: user.password
      click_button 'SIGN IN'

      expect(page).to have_content("SIGN OUT")
      expect(page).to_not have_content("Sign In")
    end

    scenario "user signs in with wrong credentials", js: true do
      fill_in 'user_email', with: 'carls@jr.com'
      fill_in 'user_password', with: 'password'
      click_button 'SIGN IN'

      expect(page).to have_content("Invalid Email or password")
      expect(find_field("user_email").value).to have_content("carls@jr.com")
    end
  end
end
