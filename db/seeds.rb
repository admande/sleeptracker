user = User.create(
  first_name: "John",
  last_name: "G",
  email: 'john@gmail.com',
  password: 'topsecret',
  password_confirmation: 'topsecret',
  phone: '6175555555'
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

Reminder.create(
  title: "Power down",
  body: "The blue screen from your phone, computer and television can prevent you from producing melatonin and can disrupt your natural sleep cycle."
)

Reminder.create(
  title: "Last cup of coffee",
  body: "Limit your coffee to the beginning of the day so that you can fall asleep easily at night."
)

Reminder.create(
  title: "Last drink",
  body: "Contrary to 50s television, alcohol at night cause a more restless sleep."
)

Reminder.create(
  title: "Lights out",
  body: "You shouldn't even be checking your phone now! But since you are, if you're feeling drowsy, it's time to go to bed. If you're not drowsy yet, start to unwind."
)

Reminder.create(
  title: "Fill out your diary",
  body: "Write down your thoughts from the day so that you're not thinking about them at night."
)

Reminder.create(
  title: "Record your sleep",
  body: "Write down how much you slept last night so that you can track your progress. Don't stress if you didn't sleep 7 or 8 hours!"
)

Reminder.create(
  title: "Write down your to-dos",
  body: "There's only so much you can do in one day, very little you can do at night, so write down what you have to do for tomorrow and get it out of your mind!"
)

Reminder.create(
  title: "Exercise",
  body: "Exercising (early in the day) can regulate your mood. You'll also sleep more soundly."
)

Reminder.create(
  title: "Last chance to exercise",
  body: "Exercising too late can make it hard for you to fall asleep, so finish up today's workout."
)

Reminder.create(
  title: "No more eating",
  body: "Certain foods, like those high in sugar, refined carbs, those that cause indigestion and MSG can affect your brain's neurotransmitters."
)

Reminder.create(
  title: "Take a break",
  body: "Not sure if the sun is still out? Go outside and find out! Exposing yourself to sunlight during the day helps you sleep better at night."
)

Diary.create(
  user_id: user.id,
  date: "2016-01-19",
  body: "Today was a real rough today because my car broke down and I realized my AAA had expired. I called my dad to come help me out, but he didn't pick up his phone. I eventually had to call my ex-boyfriend to come. Of course he brought his new boy along and we all had to squeeze together in the front seat of the pick-up truck, with that new guy putting his hand on Derek's knee and I just had to sit there.",
  sentiment: 0.03
)

Diary.create(
  user_id: user.id,
  date: "2016-01-18",
  body: "John and Dena finally announced their engagement today. I'm so happy for them. I kenw it was coming cause John and texted me the night before askign for advice on what to wear. Dena looked so happy in the pictures. They asked me today if I wanted to officiate their wedding. I was kind of nervous about it. I feel like I just want to go and enjoy the wedding and don't want to have to worry about presenting, but I also want them to be happy.",
  sentiment: 0.77
)
