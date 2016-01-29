FactoryGirl.define do
  factory :user do
    first_name 'Kyle'
    last_name 'Tavers'
    email 'kyle.tavers@gmail.com'
    password 'password!'
    phone '7815555555'
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

  factory :reminder do
    title "No more eating"
    body "Certain foods, like those high in sugar, refined carbs, those that cause indigestion and MSG can affect your brain's neurotransmitters."
  end
end
