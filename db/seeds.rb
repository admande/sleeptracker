# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


user = User.create :first_name => "John", :last_name => "G", :email => 'john@gmail.com', :password => 'topsecret', :password_confirmation => 'topsecret'

Sleeplog.create :date => "2016-01-16", :hours => "6", :user_id => user.id
Sleeplog.create :date => "2016-01-15", :hours => "3", :user_id => user.id
Sleeplog.create :date => "2016-01-14", :hours => "7", :user_id => user.id
