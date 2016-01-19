require 'rails_helper'

feature 'user deletes sleeplog', %{
  As an authenticated user
  I want to be able to delete items
  So that I no longer have to see them
} do

# Acceptance Criteria:
# [ ] I can input the amount of sleep I got on any night within the last week
# [ ] I can optionally include information about the quality of my sleep, time I got into bed, time I fell asleep, time I got out of bed, and if I took a sleeping pill
# [X] I can record notes on my sleep to help identify patterns in why I slept poorly or well

  let!(:user) { FactoryGirl.create(:user) }
  let!(:todo) { FactoryGirl.create(:todo, user: user) }

  context 'deletes todo' do
    scenario "user deletes todo", js: true do
      visit root_path
      sign_in_as(user)
      click_link "My To-Do List"
      click_link "Delete Todo"

      expect(page).to_not have_content(todo.title)
    end
  end
end
