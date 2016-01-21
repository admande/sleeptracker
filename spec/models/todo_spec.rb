 require 'rails_helper'

describe Todo do
  it { should have_valid(:title).when('Clean Dishes', 'Bake') }
  it { should_not have_valid(:title).when('', nil) }

  it { should have_valid(:due).when('2016-01-03', nil) }

  it { should belong_to(:user) }
end
