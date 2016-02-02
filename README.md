![Build Status](https://codeship.com/projects/15960290-9b0e-0133-0f5a-1eba7eda5a8f/status?branch=master)
<!-- ![Code Climate](https://codeclimate.com/github/admande/sleeptracker.png)
![Coverage Status](https://coveralls.io/repos/admande/sleeptracker/badge.png) -->

Insomniapp is the final project (Breakable Toy) created for the 2015 Winter Cohort of LaunchAcademy. It was built on Ruby on Rails with JavaScript and was deployed via Heroku.

Insomniapp uses Cognitive Behavioral Therapy techniques to help users combat their insomnia. CBT recognizes the positive and negative reinforcement cycles of thoughts, behaviors and emotions. Insomniapp encourages more productive thoughts by allowing users to record their diaries and to-do list items, better behaviors with set reminders, and allows users to see the correlation between their sleep and mood.

On the technical side, Insomniapp uses a couple of APIs and plenty of JavaScript for Ajax requests. The Indico Sentiment API is used to rank the mood of users' diary entries. The reminders are sent with the Twilio API so that users receive text message reminders at the times they choose, using a Heroku scheduler. Sign ups and logins are handled with Devise.

Insomniapp Login Screen

![Insomniapp Login](app/assets/images/insomniapp_login.png?raw=true)

Insomniapp Sleeplog Graph built with HighCharts

![Insomniapp Sleeplog Graph](app/assets/images/insomniapp_graph.png?raw=true)

Insomniapp Sleeplogs
![Insomniapp Sleeplogs](app/assets/images/insomniapp_logs.png?raw=true)

Insomniapp New Sleeplog Modal
![Insomniapp New Sleeplog](app/assets/images/insomniapp_newsleeplog.png?raw=true)

Insomniapp Reminders using Twilio API
![Insomniapp Reminders](app/assets/images/insomniapp_reminders.png?raw=true)

Insomniapp Diaries using Indico API
![Insomniapp Diaries](app/assets/images/insomniapp_diaries.png?raw=true)

Insomniapp To-Dos
![Insomniapp To- Dos](app/assets/images/insomniapp_to-dos.png?raw=true)
