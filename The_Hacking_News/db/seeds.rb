require 'faker'

10.times do
    user = User.create(name: "#{Faker::HowIMetYourMother.character}")
  end

50.times do
    x = rand(1..10)
    u = User.find(x)
    link = Link.create(user_id: u.id, url: "#{Faker::Internet.url('example.com', '/foobar.html')}")
end

# 50.times do |i|
#     x = rand(1..10)
#     y = rand(1..50)
#     lien = Link.find(y)
#     u = User.find(x)
#     if i > 0
#     comment = Comment.create(user_id: u.id, link_id: lien.id, body: Faker::HowIMetYourMother.quote, parent_id: i)
#     end
# end

100.times do |i|
    x = rand(1..10)
    u = User.find(x)
    y = rand(1..50)
    # com = Comment.find(y)
    lien = Link.find(y)
    if y % 3 == 0 && i > 2
    comment = Comment.create(user_id: u.id, link_id: lien.id, body: Faker::HowIMetYourMother.quote, parent_id: i - 1)
    else
    comment = Comment.create(user_id: u.id, link_id: lien.id, body: Faker::HowIMetYourMother.quote)
    end
end

