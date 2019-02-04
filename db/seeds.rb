require 'faker'

Gossip.destroy_all

10.times do
  City.create(name: Faker::Address.city, postal_code: Faker::Address.zip)
end

10.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  User.create(first_name: first  ,last_name: last ,email:"#{first}.#{last}@gmail.com" ,age: rand(15..25) ,city_id: rand(1..10)) 
end

10.times do
  Gossip.create(title: Faker::GreekPhilosophers.name ,content:Faker::GreekPhilosophers.quote ,user_id: rand(1..10))
end

10.times do
  Tag.create(title: Faker::DragonBall.character)
end

GossipTag.create(gossip_id: 1,tag_id: 1)

10.times do
  PrivateMessage.create(content: Faker::Hipster.sentence(3),sender_id:rand(1..10) ,recipient_id:rand(1..10))
end