# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
puts "Touts les Users ont etaient supprimer fu..."

TypeEspeceCategorie.destroy_all
puts "Touts les TypeEspeceCategorie ont etaient supprimer fu..."
EspeceCategorie.destroy_all
puts "Touts les EspeceCategorie ont etaient supprimer fu..."
Espece.destroy_all
puts "Touts les Espece ont etaient supprimer fu..."


Activite.destroy_all
puts "Toutes les Activites ont etaient supprimer ..."
Logement.destroy_all
puts "Touts les Logements ont etaient supprimer ..."
Faune.destroy_all
puts "Touts les Faune ont etaient supprimer ..."

puts "User en cours de creation..."
user1 = User.create(email: 'dorian@gmail.com', password: 'coucou', admin: true)
user1.save
user2 = User.create(email: 'random@gmail.com', password: 'coucou')
user2.save
puts " #{User.count} User ont etaient cree..."


puts "Biotop en cours de creation..."
biotop1 = Biotop.create!(user: user1, categorie: "Faune")
puts "Biotop Faune a etait cree!"
biotop2 = Biotop.create!(user: user2, categorie: "Flore")
puts "Biotop Flore a etait cree!"

puts "TypeEspeceCategorie en cours de creation 🦁 🐳 🐍 🐸..."

file = Rails.root.join('app','assets', 'images', 'faunecat', 'oiseaux.png')
type_espece_categorie1 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Oiseaux")
type_espece_categorie1.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie1.save
puts "type_espece_categorie Oiseaux a etait cree 🦜 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'mamiterre.png')
type_espece_categorie2 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Mammifères terrestres")
type_espece_categorie2.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie2.save
puts "type_espece_categorie Mammifères terrestres a etait cree 🦁 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'poissons.png')
type_espece_categorie3 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Poissons")
type_espece_categorie3.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie3.save
puts "type_espece_categorie Poissons a etait cree 🐠 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'crustace.png')
type_espece_categorie4 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Crustacés")
type_espece_categorie4.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie4.save
puts "type_espece_categorie Crustacés a etait cree 🦀 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'mamimarin.png')
type_espece_categorie5 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Mammifères marins")
type_espece_categorie5.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie5.save
puts "type_espece_categorie Mammifères marins a etait cree 🐳 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'insectes.png')
type_espece_categorie6 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Insectes & arthropodes")
type_espece_categorie6.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie6.save
puts "type_espece_categorie Insectes & arthropodes a etait cree 🪲 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'reptiles.png')
type_espece_categorie7 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Reptiles")
type_espece_categorie7.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie7.save
puts "type_espece_categorie Reptiles a etait cree 🐍 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'amphi.png')
type_espece_categorie8 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Amphibiens")
type_espece_categorie8.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie8.save
puts "type_espece_categorie Amphibiens a etait cree 🐸 !"

file = Rails.root.join('app','assets', 'images', 'faunecat', 'petitmam.png')
type_espece_categorie9 = TypeEspeceCategorie.create(user: user1, biotop: biotop1, categorie: "Petits mammifères")
type_espece_categorie9.photo.attach(io: File.open(file), filename: "v3.jpg", content_type: "image/jpeg")
type_espece_categorie9.save
puts "type_espece_categorie Petits mammifères a etait cree 🐭 !"
puts "Tout les type_espece_categorie ont etaient crees 🦁 🐳 🐍 🐸 !"


puts "EspeceCategorie en cours de creation 🦊 🐬..."

puts "EspeceCategorie Oiseau 🕊️ en cours de creation 🦊 🐬..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/1/1e/Charadrius_alexandrinus_0711.jpg/640px-Charadrius_alexandrinus_0711.jpg")
espece_categorie_oiseau1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Gravelot à collier interrompu")
espece_categorie_oiseau1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/03/Drosselrohrs%C3%A4nger_Great_reed_warbler.jpg/640px-Drosselrohrs%C3%A4nger_Great_reed_warbler.jpg")
espece_categorie_oiseau2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Rousserolle effarvatte")
espece_categorie_oiseau2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/49/European_stonechat2.jpg/220px-European_stonechat2.jpg")
espece_categorie_oiseau3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Tarier pâtre")
espece_categorie_oiseau3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau3.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Meadow_pipit_%28Anthus_pratensis%29_Oppdal.jpg/1200px-Meadow_pipit_%28Anthus_pratensis%29_Oppdal.jpg")
espece_categorie_oiseau4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Pipit farlouse")
espece_categorie_oiseau4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau4.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/f/fc/Larus_argentatus_1.JPG")
espece_categorie_oiseau5 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Goéland argenté")
espece_categorie_oiseau5.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau5.save

file = URI.open("https://www.photos-neuch.net/Images/Faune/Oiseaux/bruant_r.jpg")
espece_categorie_oiseau6 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Bruant des roseaux")
espece_categorie_oiseau6.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau6.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/8/8c/Northern-Fulmar_2.jpg")
espece_categorie_oiseau7 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Fulmar boréal")
espece_categorie_oiseau7.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau7.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/5a/Sturnus_vulgaris_2_%28Marek_Szczepanek%29.jpg")
espece_categorie_oiseau8 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie1, categorie: "Étourneau sansonnet")
espece_categorie_oiseau8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_oiseau8.save

puts "Les Oiseaux EspeceCategorie Oiseau 🕊️ ont etaientt crees 🦊 🐬..."

puts "EspeceCategorie Mammifères terrestres 🐗 en cours de creation 🦊 🐬..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/44/Lepus_europaeus_%28Causse_M%C3%A9jean%2C_Loz%C3%A8re%29-cropped.jpg")
espece_categorie_mamterre1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie2, categorie: "Lièvre d'Europe")
espece_categorie_mamterre1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mamterre1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9d/Fox_at_the_British_Wildlife_Centre%2C_Newchapel%2C_Surrey_-_geograph.org.uk_-_2221750.jpg")
espece_categorie_mamterre2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie2, categorie: "Renard roux")
espece_categorie_mamterre2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mamterre2.save

file = URI.open("https://www.vivarmor.fr/wp-content/uploads/2021/07/chevreuil.png")
espece_categorie_mamterre3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie2, categorie: "Chevreuil")
espece_categorie_mamterre3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mamterre3.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Mustela_nivalis_-British_Wildlife_Centre-4.jpg/640px-Mustela_nivalis_-British_Wildlife_Centre-4.jpg")
espece_categorie_mamterre4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie2, categorie: "Belette d'Europe")
espece_categorie_mamterre4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mamterre4.save

puts "Les Mammifères terrestres EspeceCategorie Mammifères terrestres 🐗 ont etaientt crees 🦊 🐬..."

puts "EspeceCategorie Poissons 🐠 en cours de creation 🦊 🐬..."

file = URI.open("https://www.aquarium-larochelle.com/wp-content/uploads/2021/01/emissole-lisse-aquarium-la-rochelle-bloc2-560X560.jpg")
espece_categorie_poisson1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie3, categorie: "Émissole tachetée")
espece_categorie_poisson1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_poisson1.save

file = URI.open("https://www.federation-peche-allier.fr/wp-content/uploads/2017/11/truite-fario_Madelon-FNPF-3-800x516.jpg")
espece_categorie_poisson2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie3, categorie: "Truite fario")
espece_categorie_poisson2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_poisson2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/5/58/Anguilla_anguilla.jpg")
espece_categorie_poisson3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie3, categorie: "Anguille d'Europe")
espece_categorie_poisson3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_poisson3.save

file = URI.open("https://www.fishipedia.fr/wp-content/uploads/2020/10/BCH_5677_00002_01.jpg")
espece_categorie_poisson4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie3, categorie: "Bar moucheté")
espece_categorie_poisson4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_poisson4.save

puts "Les Poissons EspeceCategorie Poissons 🐠 ont etaientt crees 🦊 🐬..."

puts "EspeceCategorie Crustacés 🦀 en cours de creation 🦊 🐬..."

file = URI.open("https://www.universaquatique.fr/53083-large_default/crevette-grise-caridina-japonica-l-4-5cm.jpg")
espece_categorie_crustace1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie4, categorie: "Crevette grise")
espece_categorie_crustace1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_crustace1.save

file = URI.open("https://lh3.googleusercontent.com/proxy/ZHnCqXtQm-xOwVU2ukjKR5SyKiIY556dhwfsxc64ZyRxorHf-BQjJ-BD2e6TQczndQvy9A3lEt0j8pa9Yhe5XxFne7O4wuun9dufgSAlG9uDcryxhFtbcAAv5hJLCs7D7vES3wNbrW0h_N7FiyCwyNFdHj0RQX4vVAQ")
espece_categorie_crustace2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie4, categorie: "Crabe vert")
espece_categorie_crustace2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_crustace2.save

file = URI.open("https://www.institut-paul-ricard.org/wp-content/uploads/2018/09/Grandecigale-780x490.jpg")
espece_categorie_crustace3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie4, categorie: "Cigale de mer")
espece_categorie_crustace3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_crustace3.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/4/4e/Armadillidium_vulgare_001.jpg/640px-Armadillidium_vulgare_001.jpg")
espece_categorie_crustace4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie4, categorie: "Cloporte")
espece_categorie_crustace4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_crustace4.save

puts "Les Crustacés EspeceCategorie Crustacés 🦀 ont etaientt crees 🦊 🐬..."

puts "EspeceCategorie Mammifères marins 🦭 en cours de creation 🦊 🐬..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/a/a0/Halichoerus_grypus_He3.jpg")
espece_categorie_mammarin1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie5, categorie: "Phoque gris")
espece_categorie_mammarin1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mammarin1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/92/Fin_whale_from_air.jpg")
espece_categorie_mammarin2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie5, categorie: "Rorqual commun")
espece_categorie_mammarin2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mammarin2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/0/00/Delphinus_delphis_03-cropped.jpg/259px-Delphinus_delphis_03-cropped.jpg")
espece_categorie_mammarin3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie5, categorie: "Dauphin commun")
espece_categorie_mammarin3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mammarin3.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/26/Ecomare_-_bruinvis_Berend_%28berend3%29.jpg/1200px-Ecomare_-_bruinvis_Berend_%28berend3%29.jpg")
espece_categorie_mammarin4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie5, categorie: "Marsouin commun")
espece_categorie_mammarin4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_mammarin4.save

puts "Les Mammifères marins EspeceCategorie Mammifères marins 🦭 ont etaientt crees 🦊 🐬..."


puts "EspeceCategorie Insectes & arthropodes 🪲 en cours de creation 🦊 🐬..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/6/6f/Polyommatus_icarus_-_Burgenland.jpg")
espece_categorie_insecte1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie6, categorie: "Papillon azuré")
espece_categorie_insecte1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_insecte1.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/4/48/Coccinella_septempunctata_detail.jpg")
espece_categorie_insecte2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie6, categorie: "Coccinelle à sept points")
espece_categorie_insecte2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_insecte2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/25/Libellula_depressa.jpg/240px-Libellula_depressa.jpg")
espece_categorie_insecte3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie6, categorie: "Libellule déprimée")
espece_categorie_insecte3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_insecte3.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/3/31/Dungbeetle.jpg")
espece_categorie_insecte4 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie6, categorie: "Scarabée sacré")
espece_categorie_insecte4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_insecte4.save

puts "Les Insectes & arthropodes EspeceCategorie Insectes & arthropodes 🪲 ont etaientt crees 🦊 🐬..."

puts "EspeceCategorie Reptiles 🐍 en cours de creation 🦊 🐬..."

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/1/10/Natrix-natrix-089.jpg")
espece_categorie_reptile1 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie7, categorie: "Couleuvre à collier")
espece_categorie_reptile1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_reptile1.save

file = URI.open("https://vipera.fr/wp-content/uploads/2014/11/Vberusfiche.jpg")
espece_categorie_reptile2 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie7, categorie: "Vipère péliade")
espece_categorie_reptile2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_reptile2.save

file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/5/5e/Anguidae.jpg/240px-Anguidae.jpg")
espece_categorie_reptile3 = EspeceCategorie.create(user: user1, type_espece_categorie: type_espece_categorie7, categorie: "Orvet fragile")
espece_categorie_reptile3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
espece_categorie_reptile3.save

puts "Les Reptiles EspeceCategorie Reptiles 🐍 ont etaientt crees 🦊 🐬..."



# Amphibiens

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/2/29/Rana_dalmatina_%28Grenouille_agile%29.JPG/800px-Rana_dalmatina_%28Grenouille_agile%29.JPG")
# amphibien1 = Faune.create(user: user1, categorie:"Amphibiens", nom: "Grenouille agile", description: "La Grenouille agile, de couleur vert vif, est souvent repérée autour des mares et des rivières de Merlimont. Ses sauts puissants et son chant mélodieux ajoutent une dimension vivante aux milieux humides.")
# amphibien1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# amphibien1.save
# puts "1 amphibiens a etait cree 🐸!"

# file = URI.open("https://lemagdesanimaux.ouest-france.fr/images/dossiers/2020-08/mini/salamandre-tachetee-082024-650-400.jpg")
# amphibien2 = Faune.create(user: user1, categorie:"Amphibiens", nom: "Salamandre tachetée", description: "La Salamandre tachetée, aux couleurs vives et aux taches distinctives, se terre dans les endroits humides et boisés de Merlimont. Ses motifs avertisseurs signalent sa toxicité, faisant d'elle une créature fascinante.")
# amphibien2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# amphibien2.save
# puts "2 amphibiens a etait cree 🐸!"

# file = URI.open("https://www.nature-isere.fr/sites/default/files/images/espece/principale/frederic_pinto-triton_alpestre.jpg_fileminimizer.jpg")
# amphibien3 = Faune.create(user: user1, categorie:"Amphibiens", nom: "Travertin alpestre", description: "Le Triton alpestre, amphibien de petite taille, trouve refuge dans les zones humides et boisées de Merlimont. Son apparence élégante et ses motifs délicats en font un sujet d'étude passionnant pour les amateurs de nature.")
# amphibien3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# amphibien3.save
# puts "3 amphibiens a etait cree 🐸!"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/d/d7/Bufo_calamita_%28Marek_Szczepanek%29.jpg/640px-Bufo_calamita_%28Marek_Szczepanek%29.jpg")
# amphibien4 = Faune.create(user: user1, categorie:"Amphibiens", nom: "Crapaud calamite", description: "Le Crapaud calamite, au dos rugueux et à la couleur variable, est souvent présent dans les prairies et les zones humides de Merlimont. Il se nourrit d'insectes et émet un chant caractéristique pendant la période de reproduction.")
# amphibien4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# amphibien4.save
# puts "4 amphibiens a etait cree 🐸!"

# Petits mammifères

# file = URI.open("https://www.instinct-animal.fr/wp-content/uploads/2019/10/musaraigne-commune-1.jpg")
# petitmam1 = Faune.create(user: user1, categorie:"Petits mammifères", nom: "Musaraigne carrelet", description: "Petite et vive, la Musaraigne carrelet explore les zones herbeuses de Merlimont, se nourrissant voracement d'insectes. Sa petite taille cache une énergie débordante, participant à la diversité des petits mammifères locaux.")
# petitmam1.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# petitmam1.save
# puts "1 petitmams a etait cree 🐭!"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/9/9c/R%C3%B6telmaus.jpg")
# petitmam2 = Faune.create(user: user1, categorie:"Petits mammifères", nom: "Campagnol des champs", description: "Le Campagnol des champs, avec son pelage brun et sa queue courte, prospère dans les champs et les prairies de Merlimont. Cet herbivore joue un rôle essentiel dans la chaîne alimentaire locale.")
# petitmam2.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# petitmam2.save
# puts "2 petitmams a etait cree 🐭!"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/e/e1/Erinaceus_europaeus_LC0119.jpg/1200px-Erinaceus_europaeus_LC0119.jpg")
# petitmam3 = Faune.create(user: user1, categorie:"Petits mammifères", nom: "Hérisson d'Europe", description: "Le Hérisson d'Europe, mammifère nocturne au dos couvert de piquants, sillonne les espaces herbeux de Merlimont en quête d'insectes et de petits invertébrés. Sa présence apporte une touche charmante à la biodiversité locale.")
# petitmam3.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# petitmam3.save
# puts "3 petitmams a etait cree 🐭!"

#  file = URI.open("https://www.vienne-nature.fr/wp-content/uploads/2020/02/1-le-masque-caract%C3%A9ristique-du-l%C3%A9rot-Photo-fabien-Zunino.jpg")
#  petitmam4 = Faune.create(user: user1, categorie:"Petits mammifères", nom: "Loir gris", description: "Le Loir gris, également connu sous le nom de 'lérots' ou 'dormeur', évolue dans les bois de Merlimont avec son pelage doux et dense aux teintes gris-brun. Arborant de grands yeux noirs et des oreilles arrondies, ce petit mammifère arboricole utilise sa queue touffue et préhensile pour naviguer habilement entre les branches. Actif principalement la nuit, le loir gris se nourrit d'un régime varié, comprenant fruits, noix, graines, insectes et bourgeons. Pendant l'hiver, il entre en dormance, ralentissant son métabolisme et utilisant ses réserves de graisse accumulées. Bien que discret, le loir gris joue un rôle crucial dans l'écosystème forestier de Merlimont, contribuant à la dispersion des graines et à la santé globale de la biodiversité locale.")
#  petitmam4.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
#  petitmam4.save
#  puts "4 petitmams a etait cree 🐭!"



# puts "Activite en cours de creation ma couille... 🏄"

# file = URI.open("https://www.parcbagatelle.com/fileadmin/_processed_/6/8/csm_Banniere-BaggyPass-Bagatelle_fb50144a68.jpg")
# activite1 = Activite.create(title: "Bagatelle", description: "Bagatelle merli village")
# activite1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
# activite1.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://www.hillstonestlucia.com.au/wp-content/uploads/2020/09/0S1A5968.jpg")
# activite2 = Activite.create(title: "mini golf", description: "mini golf merlimont plage")
# activite2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# activite2.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://cdt14.media.tourinsoft.eu/upload/135-3571-IMG.jpg")
# activite3 = Activite.create(title: "char a voile", description: "char a voile merlimont plage")
# activite3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# activite3.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
# activite4 = Activite.create(title: "activite 4", description: "au surfer merlimont plage")
# activite4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# activite4.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
# activite5 = Activite.create(title: "activite 5", description: "au surfer merlimont plage")
# activite5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
# activite5.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
# activite6 = Activite.create(title: "activite 6", description: "au surfer merlimont plage")
# activite6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
# activite6.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
# activite7 = Activite.create(title: "activite 7", description: "au surfer merlimont plage")
# activite7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
# activite7.save
# puts "#{Activite.count} activites crée!"

# file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
# activite8 = Activite.create(title: "activite 8", description: "au surfer merlimont plage")
# activite8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# activite8.save
# puts "#{Activite.count} All activites crée!!!!"

# puts "Toutes les #{Activite.count} activites ont etaient cree 🏆🏄!"


# puts "Les logements sont en cours de creation ma couille..."
# puts "Les locations sont en cours de creation ma couille..."


# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location1 = Logement.create(categorie:"location", title: "Belle location 1", description: "Description de la location 1", price: "80", email: "email@email.com", phone: "0321953423")
# location1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
# location1.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location2 = Logement.create(categorie:"location", title: "Belle location 2", description: "Description de la location 2", price: "80", email: "email@email.com", phone: "0322923423")
# location2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# location2.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location3 = Logement.create(categorie:"location", title: "Belle location 3", description: "Description de la location 3", price: "80", email: "email@email.com", phone: "0323933423")
# location3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# location3.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location4 = Logement.create(categorie:"location", title: "Belle location 4", description: "Description de la location 4", price: "80", email: "email@email.com", phone: "0324943423")
# location4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# location4.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location5 = Logement.create(categorie:"location", title: "Belle location 5", description: "Description de la location 5", price: "80", email: "email@email.com", phone: "0325953423")
# location5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
# location5.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location6 = Logement.create(categorie:"location", title: "Belle location 6", description: "Description de la location 6", price: "80", email: "email@email.com", phone: "0326953423")
# location6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
# location6.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location7 = Logement.create(categorie:"location", title: "Belle location 7", description: "Description de la location 7", price: "80", email: "email@email.com", phone: "0327953423")
# location7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
# location7.save
# puts "#{Logement.count} location a etait cree 🏠!"

# file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
# location8 = Logement.create(categorie:"location", title: "Belle location 8", description: "Description de la location 8", price: "80", email: "email@email.com", phone: "0328953423")
# location8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
# location8.save

# puts "#{Logement.count} location a etait cree 🏠!"
# puts "Toutes les #{Logement.count} location ont etaient cree 🏠!"




# puts "Les campings sont en cours de creation ma couille..."

# file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
# camping1 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
# camping1.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# camping1.save
# puts "1 campings on etait cree ⛺️!"

# file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
# camping2 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
# camping2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# camping2.save
# puts "2 campings on etait cree ⛺️!"

# file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
# camping3 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
# camping3.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# camping3.save
# puts "3 campings on etait cree ⛺️!"

# file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
# camping4 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
# camping4.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
# camping4.save
# puts "4 campings on etait cree !"
# puts "Toutes les campings ont etaient cree ⛺️!"


# puts "Les camping-car sont en cours de creation ma couille..."

# file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
# car1 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
# car1.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# car1.save
# puts "1 camping-car a etait cree 🚐!"

# file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
# car2 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
# car2.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# car2.save
# puts "2 camping-car a etait cree 🚐!"

# file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
# car3 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
# car3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# car3.save
# puts "3 camping-car a etait cree 🚐!"

# file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
# car4 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
# car4.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
# car4.save
# puts "4 camping-car a etait cree! 🚐"

# puts "Les camping-car ont fini d etre cree ma couille... 🚐"



# puts "Les chambre d hote sont en cours de creation ma couille..."

# file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
# hote1 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
# hote1.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# hote1.save
# puts "1 hote a etait cree 👩🏻‍🌾!"

# file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
# hote2 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
# hote2.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# hote2.save
# puts "2 hote a etait cree 👩🏻‍🌾!"

# file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
# hote3 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
# hote3.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# hote3.save
# puts "3 hote a etait cree 👩🏻‍🌾!"

# file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
# hote4 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
# hote4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
# hote4.save
# puts "4 hote a etait cree 👩🏻‍🌾!"

#puts "Les chambre d hote ont fini d etre cree ma couille... 👩🏻‍🌾"

#puts "#{Logement.count} logements de toutes avec des categories differentes ont etaient cree! 🍻"
