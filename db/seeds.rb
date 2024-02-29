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
Rental.destroy_all
Character.destroy_all
User.destroy_all

puts "Database cleared!"
puts "Creating user..."
User.create!(
  first_name: "Test",
  last_name: "Test1",
  email: "test@test.com",
  password: "123456"
)

puts "Creating Kaamelott characters..."

Character.create(
  name: 'Dame Séli',
  description: "Vous vous étonnerez pas si vous ressentez une vive douleur sur le sommet du crâne. C’est sûrement que vous aurez pris le plat à gigot dans la tronche ! Je ne pense pas que vous soyez en mesure de parler de votre belle-mère Arthur Cuillière !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'dame_seli.webp'
)

Character.create(
  name: 'Le roi Loth',
  description: "Je vais y aller, de jour, devant tout le monde. Et si je deviens roi de Bretagne, je vous nomme respectivement Ministre des armes, et Responsable de la protection des frontières. Parce que mon destin, c'est de m'entourer de nuls, de vrais nuls… Timeo libri rex agitur, ça veut rien dire, mais c'est ce que j'ai trouvé de plus… aigre !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'roi_loth.webp'
)

Character.create(
  name: 'Léodagan',
  description: "Qu'est-ce que vous voulez, mon p'tit Bohort : entre son épée qui fait de la lumière, son Merlin qui fait pleuvoir des grenouilles et sa Dame du Lac qui se prend pour une truite, il lui manque plus qu'un numéro de trapèze, au roi des Bretons.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'leodagan.webp'
)

Character.create(
  name: 'Bohort',
  description: "D'après mes derniers renseignements, il serait tout à fait possible que le Graal ne soit ni un vase, ni une coupe, mais... un récipient.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'bohort.jpeg'
)

Character.create(
  name: 'Gauvain',
  description: "Mon oncle, n'est-ce pas vous même qui m'avez dit que rien ne remplaçait une véritable amitié et qu'en cas d'urgence c'était la seule corde à laquelle on pouvait vraiment se raccrocher ?",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'gauvain.webp'
)

Character.create(
  name: 'Yvain',
  description: "Il s'est acharné sur moi avec une sauvagerie mêlée de férocité. Celui qu'avait qu'une jambe. Oui, bah du coup, c'était le plus hargneux. C'était comme s'il se vengeait sur moi de sa jambe euh... Avec une sauvagerie mêlée de férocité.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'yvain.webp'
)

Character.create(
  name: 'Karadoc',
  description: "Par exemple, vous prenez aujourd’hui. Vous comptez sept jours. Ça vous emmène dans une semaine. Et bien on sera exactement le même jour qu’aujourd’hui… À une vache près, hein… C’est pas une science exacte.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'karadoc.jpeg'
)

Character.create(
  name: 'Perceval',
  description: "Donc, pour résumer, je suis souvent victime des colibris, sous-entendu des types qu’oublient toujours tout. Euh, non… Bref, tout ça pour dire, que je voudrais bien qu’on me considère en tant que Tel.",
  price: 60.00,
  rating: rand(1..5),
  image: 'perceval.webp'
)

Character.create(
  name: 'Dagonet',
  description: "Le premier truc qui frappe, c’est la langue. Vous savez ce que c’est, on arrive sur place, boum… En fait, c’est quand on commence à entendre les gens parler que là… là, on se dit : je suis pas chez moi.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'dagonet.webp'
)

Character.create(
  name: 'Guethenoc',
  description: "Non mais vous allez faire chier le monde pendant combien de temps vous encore, avec vos vaches pourries là, hein ?! Vous voyez pas que vous êtes pas fait pour l’agriculture ?! Hein, vous avez qu’à vous recycler dans la mendicité ! En plus, vous avez… Vous avez déjà la tenue !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'guethenoc.webp'
)

Character.create(
  name: 'Roparzh',
  description: "Ah bah on parle pas la même chose ! Moi j’connais mon métier ! C’est pas compliqué, faites une visite chez lui vous verrez ! Y a un signe qui trompe pas : toutes ses bêtes sentent la pisse ! Et puis fort ! Déjà vous passez devant son portail, ça vous prend le museau là ! Nan, c’est pas du boulot.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'roparzh.webp'
)

Character.create(
  name: 'Merlin',
  description: "Invoquer une meute de loups ? Moi je veux bien, mais je vous préviens : s’ils se retournent contre nous pour nous bouffer les miches, vous viendrez pas pleurer !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'merlin.webp'
)

Character.create(
  name: 'Lancelot',
  description: "Alors faites des efforts pour arrêter de vous comporter comme un connard ! Moi j’en ai plein le cul de seconder un merdeux de dix ans même pas foutu de trouver un Graal ou de faire un gamin à sa femme ! Oui alors voilà, je me suis assis sur votre trône parce que je fais la moitié de votre boulot… Et je vous emmerde !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'lancelot.webp'
)

Character.create(
  name: 'Arthur',
  description: "Non, moi j'crois qu'il faut qu’vous arrêtiez d'essayer d'dire des trucs. Ça vous fatigue, déjà, et pour les autres, vous vous rendez pas compte de c'que c'est... Moi quand vous faites ça, ça me fout une angoisse... J'pourrais vous tuer, j'crois. De chagrin, hein ! J'vous jure c'est pas bien. Il faut plus que vous parliez avec des gens.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'arthur.webp'
)

Character.create(
  name: 'Angharad',
  description: "Si Monsieur et Madame pouvaient remettre leurs roulages de galoches à plus tard, il me semblerait judicieux de foutre le camp d'ici au plus vite.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'angharad.webp'
)

Character.create(
  name: 'Père Blaise',
  description: "Voilà ! C’est tout ce qu’y a ! Unisson, quarte, quinte et c’est marre ! Tous les autres intervalles, c’est de la merde ! Le prochain que je chope en train de siffler un intervalle païen, je fais un rapport au pape !",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'pere_blaise.webp'
)

Character.create(
  name: 'La Dame du Lac',
  description: "Vous ne voulez pas larguer votre femme illégitime et lever une armée pour aller reprendre votre femme légitime ? Honnêtement, ça m'arrangerait.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'dame_du_lac.webp'
)

Character.create(
  name: 'Guenièvre',
  description: "Je voulais savoir pourquoi vous laissiez tous vos chevaliers former des clans séparatistes, alors que l’une de vos plus importantes missions a toujours été de fédérer les clans existants autour de votre royaume et de la quête du Graal ? Enfin c'était pas tout à fait ça…",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'guenievre.webp'
)

Character.create(
  name: 'Méléagant',
  description: "Tout cela n'est rien. Absolument rien ! Il y a peu de temps quelque chose a fait « Boum » ! Voilà... Nous sommes sur une toute petite miette expulsée par ce boum, qui dérive et tournicote sur elle-même, en attendant sa fin... proche ! Sur cette miette, de tous petits organismes gesticulent : ça naît, ça vit, et ça meurt ! Tout cela n'a aucune conséquence.",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'meleagant.webp'
)

Character.create(
  name: 'Le tavernier',
  description: "Ah non mais moi la dignité je suis drôlement pour hein, je vais même vous dire au nom de la dignité je suis prêt à vous donner toutes les chambres que vous voulez! La seule chose que je vous demande c’est de les payer, c’est tout!",
  price: rand(30.00..100.00).round(2),
  rating: rand(1..5),
  image: 'LeTavernier.jpg'
)

puts "Characters generated!"
