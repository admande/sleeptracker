require 'rails_helper'

describe Reminder do
  it { should have_many(:user_reminders) }
end
