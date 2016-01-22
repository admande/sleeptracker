require 'spec_helper'

feature 'user adds todo', %{
  As an authenticated user
  I want to be able to add to my to-do list
  So that I can update it with my latest to-do list items
} do

# Acceptance Criteria:
# [X] I can add a to-do list item with a title and optionally a due date
# [X] I can optionally star an important item

let!(:user) { FactoryGirl.create(:user) }

  context 'signing in' do
    xscenario "user adds a todo", js: true do
      visit root_path
      sign_in_as(user)
      click_link "My To-Do List"
      click_link "Add Todo"
      fill_in "Title", with: "Buy Dad's Birthday present"
      select "1", from: "todo_due_3i"
      check "todo_starred"
      click_button 'Create Todo'

      expect(page).to have_content("Buy Dad's Birthday present")
    end
  end
end
