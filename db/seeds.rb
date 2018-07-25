# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Ce file créé ou, selon les cas 'rand', génère de la data aléatoirement, qui sera ensuite injectée dans la database

require 'faker'

nb_user = 10
nb_pin = 5
nb_com = 8

# Creation des 10 users

nb_user.times do
	User.create(name: Faker::Name.first_name)
end

# Creation des 5 pins

nb_pin.times do
	Pin.create(user_id: rand(1..10), url: Faker::IDNumber.valid)
end

# Creation des 5 commentaires

nb_com.times do
	Comment.create(content: Faker::Lorem.sentence, pin_id: rand(1..nb_pin), user_id: rand(1..nb_user))
end