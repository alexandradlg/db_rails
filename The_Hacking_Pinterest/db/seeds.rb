require 'faker'

10.times do
    user = User.create(name: "#{Faker::Name.first_name}")
  end

50.times do
    x = rand(1..10)
    u = User.find(x)
    pin = Pin.create(user_id: u.id, image_url: "#{Faker::Internet.url('example.com', '/foobar.jpg')}")
end

100.times do
    x = rand(1..10)
    y = rand(1..50)
    pi = Pin.find(y)
    u = User.find(x)
    comment = Comment.create(user_id: u.id, pin_id: pi.id, body: Faker::Hacker.say_something_smart)
end