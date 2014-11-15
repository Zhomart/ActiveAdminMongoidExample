# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

AdminUser.create email: 'admin@example.org', password: 'elpmaxe14'


10.times do |i|
  name = "user name #{i}"
  email = "email_#{i}@example.org"

  User.create email: email, name: name, password: "elpmaxe14"
end
