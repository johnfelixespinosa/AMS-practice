require 'faker'

10.times do
  name = Faker::Book.author,
  gamertag = Faker::DragonBall.character
  user = User.create!(name: name, gamertag: gamertag)
  rand(2..5).times do
    title = Faker::Esport.game
    game = Game.new(title: title)
    game.user = user
    game.save!
  end
end