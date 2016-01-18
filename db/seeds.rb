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

Todo.create(
  title: "Sign up Billy for daycare",
  user_id: user.id
)
Todo.create(
  due: "2016-02-15",
  title: "Water lawn",
  user_id: user.id
)

Todo.create(
  due: "2016-04-15",
  title: "File taxes",
  user_id: user.id
)
