require 'faker'

User.destroy_all
Gossip.destroy_all

10.times do
  City.create(name: Faker::Address.city, postal_code: Faker::Address.zip)
end

10.times do
  first = Faker::Name.first_name
  last = Faker::Name.last_name
  User.create(first_name: first  ,last_name: last ,email:"#{first}.#{last}@gmail.com" ,age: rand(15..25) ,city_id: City.all.sample.id, description: Faker::Lebowski.quote) 
end

10.times do
  Gossip.create(title: Faker::GreekPhilosophers.name ,content:Faker::GreekPhilosophers.quote ,user_id: User.all.sample.id)
end


10.times do
  Tag.create(title: Faker::DragonBall.character)
end

GossipTag.create(gossip_id: 1,tag_id: 1)

10.times do
  PrivateMessage.create(content: Faker::Hipster.sentence(3),sender_id:rand(1..10) ,recipient_id:rand(1..10))
end

50.times do
  Comm.create(content: Faker::Hipster.sentence(3), user_id: User.all.sample.id, gossip_id: Gossip.all.sample.id)
end