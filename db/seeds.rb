# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first


 20.times do
 	name = Faker::Creature::Cat.name
  description = "Le chat est un mammifère de la famille de félidés. Il pèse en moyenne 2,5 à 4,5 kg et mesure entre 66 et 76 cm, avec la queue. Ses pattes sont pourvues de griffes rétractiles"

  description.length
  item = Item.new
  item.title = name
  item.description = description
  item.price = Faker::Number.between(from: 1.00, to: 10.00).round(2)
  item.image_url = Faker::Avatar.image(slug: name, size: "200x200", format: "jpg", set: "set4", bgset: "bg1")

  item.save
 end
