10.times do 
	Athlete.create(name: Faker::Name.name)
	Fan.create(name: Faker::Name.name)
end



fans = [1,2,3,4,5,6,7,8,9,10]

(1..10).each do |n|
	5.times do 
	 Qa.create(host_id: n, fan_id: fans.dup.shuffle.pop, start_time: Faker::Time.between(DateTime.now - 0.08, DateTime.now - 0.04), end_time: DateTime.now)
	end

end

100.times do 
	Question.create(content: Faker::Lorem.sentence, fan_id: rand(1..10), qa_id: rand(1..10))
end



(1..100).each do |n|
	Answer.create(content: Faker::Lorem.sentence, question_id: n, athlete_id: rand(1..10))
end
