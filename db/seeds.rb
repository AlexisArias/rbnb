# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Clearing database..."

Character.destroy_all

puts "Database cleared!"


puts "Creating Kaamelott characters..."

Character.create(
  name: 'Dame Séli',
  description: "Vous vous étonnerez pas si vous ressentez une vive douleur sur le sommet du crâne. C’est sûrement que vous aurez pris le plat à gigot dans la tronche !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'dame_seli.webp'
)

Character.create(
  name: 'Le roi Loth',
  description: "Tempora mori, tempora mundis recorda. Voilà. Eh bien ça, par exemple, ça veut absolument rien dire",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'roi_loth.webp'
)

Character.create(
  name: 'Perceval de Galles',
  description: "Faut arrêter ces conneries de nord et de sud ! Une fois pour toutes, le nord, suivant comment on est tourné, ça change tout !",
  price: 60.00,
  rating: rand(1..5),
    image: 'perceval.webp'
)

Character.create(
  name: 'Léodagan',
  description: 'Roi de Carmélide et père de Guenièvre.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'leodagan.webp'
)

Character.create(
  name: 'Bohort',
  description: 'Chevalier de la Table ronde, souvent effrayé.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'bohort.jpeg'
)

Character.create(
  name: 'Gauvain',
  description: 'Neveu du roi Arthur et chevalier de la Table ronde.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'gauvain.webp'
)

Character.create(
  name: 'Yvain',
  description: 'Chevalier de la Table ronde, également connu sous le nom de Chevalier au Lion.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'yvain.webp'
)

Character.create(
  name: 'Karadoc',
  description: 'Chevalier de la Table ronde, grand amateur de nourriture.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'karadoc.jpeg'
)

Character.create(
  name: 'Dagonet',
  description: 'Chevalier de la Table ronde, souvent encline à la mélancolie.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'dagonet.webp'
)

Character.create(
  name: 'Guethenoc',
  description: 'Paysan de Kaamelott, souvent impliqué dans des quiproquos.',
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
    image: 'guethenoc.webp'
)

puts "Characters generated!"
