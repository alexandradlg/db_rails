require 'faker'


10.times do
    user = User.create(name: Faker::BackToTheFuture.character)
  end

50.times do
    x = rand(1..10)
    u = User.find(x)
    article = Article.create(user_id: u.id, name: "#{Faker::BackToTheFuture.character}", body: Faker::BackToTheFuture.quote, description: Faker::BackToTheFuture.date)
end

100.times do 
    categorie = Category.create(name: "#{Faker::HitchhikersGuideToTheGalaxy.planet}")
end

