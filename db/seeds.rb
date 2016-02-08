# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

20.times do
  Employee.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, email: Faker::Internet.email)
end

10.times do
  pro = ProgressReport.create(body: Faker::Hipster.paragraph)
  pro.author = Employee.find(rand(Employee.all.length))
end

10.times do
  team = Team.create(name: Faker::Hipster.word)
  team.employee = Employee.all.sample
  rand(1..3).times do
    team.members << Employee.all.sample
  end
end
