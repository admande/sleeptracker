require 'spec_helper'

feature 'unauthenticated user visits website', %{
  As an unauthenticated user
  I want to navigate through parts of the app
  So that I can decide if I want to create an account
} do

# Acceptance Criteria:
# [X] I can see information on the science behind the app on the Research page

  scenario 'unauthenticated user can access about page' do
    visit about_path

    expect(page).to have_content "Here is the idea behind the app"
  end
end
