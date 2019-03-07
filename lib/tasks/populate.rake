namespace :populate do
  desc "Populate Games"
  task games: :environment do
    20.times do
      game = Game.create(name: Faker::JapaneseMedia::OnePiece.island, description: Faker::JapaneseMedia::OnePiece.sea)
      5.times { Character.create(name: Faker::Games::WorldOfWarcraft.hero, power: Faker::Superhero.power, game_id: game.id) }
    end
  end
end