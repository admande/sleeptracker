require 'rails_helper'

feature 'user edits todo', %{
  As an authenticated user
  I want to be able to edit my to-do list
  So that it accurately reflects my needs
} do

# Acceptance Criteria:
# [ ] I can update my uncompleted to-do list item title or due date at any time
# [ ] I want to be able to mark items as completed, but not remove them from my list
# [ ] I can star and unstar items
# [ ] I cannot update completed items from my to-do list

let!(:user) { FactoryGirl.create(:user) }
let!(:todo) { FactoryGirl.create(:todo, user: user) }

  context 'edit todo' do
    xscenario "user edits a todo", js: true do
      visit root_path
      sign_in_as(user)
      click_link "My To-Do List"
      find('#best_in_place_todo_1_title', text: todo.title).click
      fill_in '#best_in_place_todo_1_title', with: "Buy Dad's Birthday present"
      find('#best_in_place_todo_1_title', text: todo.title)
      find('#best_in_place_todo_1_title').native.send_keys(:return)

      expect(page).to have_content("Buy Dad's Birthday present")
    end
  end
end
