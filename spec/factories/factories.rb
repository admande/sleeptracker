FactoryGirl.define do
  factory :user do
    first_name 'Kyle'
    last_name 'Tavers'
    email 'kyle.tavers@gmail.com'
    password 'password!'
  end

  factory :sleeplog do
    user
    sequence(:date) { |i| "2015-01-#{i}" }
    hours { rand(1..10) }
  end

  factory :todo do
    user
    title 'Grocery Shopping'
  end
end
