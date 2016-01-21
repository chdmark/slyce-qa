# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

10.times do 
	Athlete.create(name: Faker::Name.name, sport_id: rand(1..2))
	Fan.create(name: Faker::Name.name)
end



Sport.create(name: "Basketball")

Sport.create(name: "American Football")

100.times do 
	Question.create(content: Faker::Lorem.sentence, fan_id: rand(1..10))
end



100.times do 
	Answer.create(content: Faker::Lorem.sentence, question_id: (1..100).each {|n| n}, fan_id: rand(1..10))
end