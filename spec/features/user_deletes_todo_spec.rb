require 'rails_helper'

feature 'user deletes sleeplog', %{
  As an authenticated user
  I want to be able to delete items
  So that I no longer have to see them
} do

# Acceptance Criteria:
# [X] I can delete items from my to-do list at any time

  let!(:user) { FactoryGirl.create(:user) }
  let!(:todo) { FactoryGirl.create(:todo, user: user) }

  context 'deletes todo' do
    xscenario "user deletes todo", js: true do
      visit root_path
      sign_in_as(user)
      click_link "My To-Do List"
      click_link "Delete Todo"

      expect(page).to_not have_content(todo.title)
    end
  end
end
