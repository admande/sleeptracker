require 'rails_helper'

describe UserReminder do
  it { should belong_to(:user) }
  it { should belong_to(:reminder) }
end
