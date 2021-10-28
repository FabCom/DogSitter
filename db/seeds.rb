# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.destroy_all
Dogsitter.destroy_all
City.destroy_all

["Allauch","Carnoux-en-Provence","Carry-le-Rouet","Cassis","Ceyreste","Châteauneuf-les-Martigues","La Ciotat","Ensuès-la-Redonne","Gémenos","Gignac-la-Nerthe","Marignane","Marseille","Plan-de-Cuques","Roquefort-la-Bédoule","Le Rove","Saint-Victoret","Sausset-les-Pins","Septèmes-les-Vallons"].each do |current|
  City.create(name: current)
end

City.all.each do |current|
  rand(30..80).times do
    Dog.create(name: Faker::Creature::Dog.name, city: current)
  end

  rand(5..15).times do
    Dogsitter.create(name: Faker::Games::Heroes.name, city: current)
  end
end


200.times do
  dog = Dog.all.sample(1)[0]
  Stroll.create(date: Faker::Date.forward(days: 365), dog: dog, dogsitter: Dogsitter.where(city: dog.city).sample(1)[0])
end
