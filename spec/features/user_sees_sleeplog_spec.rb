require 'spec_helper'

feature 'user signs in', %{
  As an authenticated user
  I want to be able to see my sleep information
  So that I can track changes in my sleep behavior
} do

# Acceptance Criteria:
# [ ] I can navigate to my sleep log from any page
# [ ] I can choose to see a display of sleep gotten over the last week, month, or year
# [ ] I can see my mood from the night before (based on the diary log), to see if my mood affected my sleep

  let!(:user) { FactoryGirl.create(:user) }
  let!(:sleeplogs) { FactoryGirl.create_list(:sleeplog, 30, user: user) }

  context 'seeing sleeplogs' do
    before do
      sign_in_as(user)
      visit sleeplogs_path
      save_and_open_page
    end

    scenario "user sees sleeplogs" do
      expect(page).to have_content("Sleeplogs")
      expect(page).to have_content("Date")
      expect(page).to have_content("Hours")
    end
  end
end
