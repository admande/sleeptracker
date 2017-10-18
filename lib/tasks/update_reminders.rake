namespace :reminders do
  desc "Send text at certain times"
  task :update_reminders => :environment do
    Reminder.find_by(title: "Power down").update_attributes(
      body: "The blue screen from your phone computer and television can prevent you from producing melatonin and can disrupt your natural sleep cycle."
    )

    Reminder.find_by(title: "Last cup of coffee").update_attributes(
      body: "Limit your coffee to the beginning of the day so that you can fall asleep easily at night."
    )

    Reminder.find_by(title: "Last drink").update_attributes(
      body: "Contrary to 50s television, alcohol at night cause a more restless sleep."
    )

    Reminder.find_by(title: "Lights out").update_attributes(
      body: "You shouldn't even be checking your phone now! But since you are, if you're feeling drowsy, it's time to go to bed. If you're not drowsy yet, start to unwind."
    )

    Reminder.find_by(title: "Fill out your diary").update_attributes(
      body: "Write down your thoughts from the day so that you're not thinking about them at night. myinsomniapp.herokuapp.com/diaries"
    )

    Reminder.find_by(title: "Record your sleep").update_attributes(
      body: "Write down how much you slept last night so that you can track your progress. Don't stress if you didn't sleep 7 or 8 hours! myinsomniapp.herokuapp.com/sleeplogs"
    )

    Reminder.find_by(title: "Write down your to-dos").update_attributes(
      body: "There's only so much you can do in one day, very little you can do at night, so write down what you have to do for tomorrow and get it out of your mind! myinsomniapp.herokuapp.com/todos"
    )

    Reminder.find_by(title: "Exercise").update_attributes(
      body: "Exercising (early in the day) can regulate your mood. You'll also sleep more soundly."
    )

    Reminder.find_by(title: "Last chance to exercise").update_attributes(
      body: "Exercising too late can make it hard for you to fall asleep so finish up today's workout."
    )

    Reminder.find_by(title: "No more eating").update_attributes(
      body: "Certain foods like those high in sugar refined carbs those that cause indigestion and MSG can affect your brain's neurotransmitters."
    )

    Reminder.find_by(title: "Take a break",
      body: "Not sure if the sun is still out? Go outside and find out! Exposing yourself to sunlight during the day helps you sleep better at night."
    )
  end
end
