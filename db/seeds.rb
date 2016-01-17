user = User.create(
  first_name: "John",
  last_name: "G",
  email: 'john@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret'
)

Sleeplog.create(
  date: "2016-01-16",
  hours: "6",
  user_id: user.id
)
Sleeplog.create(
  date: "2016-01-15",
  hours: "3",
  user_id: user.id
)

Sleeplog.create(
  date: "2016-01-14",
  hours: "7",
  user_id: user.id
)
