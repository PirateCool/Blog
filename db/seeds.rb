# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'






100.times do 
	user = User.create(name: Faker::Name.name, email: Faker::Internet.email)
end

10.times do 
	category = Category.create(name: Faker::Company.catch_phrase)
end

100.times do 
	article = Article.create(category_id: rand(1..10), title: Faker::Lorem.sentence(3), content: Faker::Lorem.paragraph(2), user_id: rand(1..100))
end

200.times do 
	comment = Comment.create(content: Faker::Lorem.sentence(3, false, 4), user_id: rand(1..100), article_id: rand(1..100))
end

180.times do
	like = Like.create(user_id: rand(1..100)	, article_id: rand(1..100))
end
