# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.destroy_all
puts "Touts les Users ont etaient supprimer fu..."
Activite.destroy_all
puts "Toutes les activites ont etaient supprimer biloute..."
Logement.destroy_all
puts "Touts les logements ont etaient supprimer aussi ma guelle..."
Faune.destroy_all
puts "Touts les animaux ont etaient supprimer aussi ma grenouille 🐸..."

puts "Activite en cours de creation ma couille... 🏄"

file = URI.open("https://www.parcbagatelle.com/fileadmin/_processed_/6/8/csm_Banniere-BaggyPass-Bagatelle_fb50144a68.jpg")
activite1 = Activite.create(title: "Bagatelle", description: "Bagatelle merli village")
activite1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
activite1.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://www.hillstonestlucia.com.au/wp-content/uploads/2020/09/0S1A5968.jpg")
activite2 = Activite.create(title: "mini golf", description: "mini golf merlimont plage")
activite2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
activite2.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://cdt14.media.tourinsoft.eu/upload/135-3571-IMG.jpg")
activite3 = Activite.create(title: "char a voile", description: "char a voile merlimont plage")
activite3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
activite3.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite4 = Activite.create(title: "activite 4", description: "au surfer merlimont plage")
activite4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
activite4.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite5 = Activite.create(title: "activite 5", description: "au surfer merlimont plage")
activite5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
activite5.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite6 = Activite.create(title: "activite 6", description: "au surfer merlimont plage")
activite6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
activite6.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite7 = Activite.create(title: "activite 7", description: "au surfer merlimont plage")
activite7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
activite7.save
puts "#{Activite.count} activites crée!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite8 = Activite.create(title: "activite 8", description: "au surfer merlimont plage")
activite8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
activite8.save
puts "#{Activite.count} All activites crée!!!!"

puts "Toutes les #{Activite.count} activites ont etaient cree 🏆🏄!"


puts "Les logements sont en cours de creation ma couille..."
puts "Les locations sont en cours de creation ma couille..."


file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location1 = Logement.create(categorie:"location", title: "Belle location 1", description: "Description de la location 1", price: "80", email: "email@email.com", phone: "0321953423")
location1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
location1.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location2 = Logement.create(categorie:"location", title: "Belle location 2", description: "Description de la location 2", price: "80", email: "email@email.com", phone: "0322923423")
location2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
location2.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location3 = Logement.create(categorie:"location", title: "Belle location 3", description: "Description de la location 3", price: "80", email: "email@email.com", phone: "0323933423")
location3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
location3.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location4 = Logement.create(categorie:"location", title: "Belle location 4", description: "Description de la location 4", price: "80", email: "email@email.com", phone: "0324943423")
location4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
location4.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location5 = Logement.create(categorie:"location", title: "Belle location 5", description: "Description de la location 5", price: "80", email: "email@email.com", phone: "0325953423")
location5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
location5.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location6 = Logement.create(categorie:"location", title: "Belle location 6", description: "Description de la location 6", price: "80", email: "email@email.com", phone: "0326953423")
location6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
location6.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location7 = Logement.create(categorie:"location", title: "Belle location 7", description: "Description de la location 7", price: "80", email: "email@email.com", phone: "0327953423")
location7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
location7.save
puts "#{Logement.count} location a etait cree 🏠!"

file = URI.open("https://media.inmobalia.com/imgV1/B98Le8~d7M9k3DegigWkzHXQlgzMFGqGJJp6ZRUcpX033lqadFBp2i4GGW4X2J1jIJ9Pwc6GsJX5cPScJf~MQeTIWIvX1s_P0QuOdXad5Jpt0YFJ~Dqx8xEepk0k_hkiGic5lTybUHjlf1FhydqGnTGEBMwQJ0sU_jrXdUhAjuWm8YeOfPxrLANEzm2~hmlQmerMLpc1Q5YmGC4ypB0dINX86r85R3fRtbnQmJWbfkhx_FPiino_lxrCew_YcHQ~o0fdS6YGR_kQusaadf7h7zlESof744NH__vJ3mh6FeNuwGeoSNYyd8SWJg--.jpg")
location8 = Logement.create(categorie:"location", title: "Belle location 8", description: "Description de la location 8", price: "80", email: "email@email.com", phone: "0328953423")
location8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
location8.save

puts "#{Logement.count} location a etait cree 🏠!"
puts "Toutes les #{Logement.count} location ont etaient cree 🏠!"




puts "Les campings sont en cours de creation ma couille..."

file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
camping1 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
camping1.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
camping1.save
puts "1 campings on etait cree ⛺️!"

file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
camping2 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
camping2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
camping2.save
puts "2 campings on etait cree ⛺️!"

file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
camping3 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
camping3.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
camping3.save
puts "3 campings on etait cree ⛺️!"

file = URI.open("https://res.cloudinary.com/serdy-m-dia-inc/image/upload/w_800,c_limit/legacy_espaces//var/data/gallery/photo/86/84/45/92/16/97273.jpg")
camping4 = Logement.create(categorie:"camping", title: "Belle camping 1", description: "Description de camping 1", price: "80", email: "email@email.com", phone: "0322953423")
camping4.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
camping4.save
puts "4 campings on etait cree !"
puts "Toutes les campings ont etaient cree ⛺️!"


puts "Les camping-car sont en cours de creation ma couille..."

file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
car1 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
car1.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
car1.save
puts "1 camping-car a etait cree 🚐!"

file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
car2 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
car2.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
car2.save
puts "2 camping-car a etait cree 🚐!"

file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
car3 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
car3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
car3.save
puts "3 camping-car a etait cree 🚐!"

file = URI.open("https://www.campingcarlesite.com/wp-content/uploads/2023/10/2024-Adria-Supersonic-890-LL-01-1280x720.jpg")
car4 = Logement.create(categorie:"camping-car", title: "Belle camping-car 3", description: "Description de camping-car 3", price: "80", email: "email@email.com", phone: "0323953423")
car4.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
car4.save
puts "4 camping-car a etait cree! 🚐"

puts "Les camping-car ont fini d etre cree ma couille... 🚐"



puts "Les chambre d hote sont en cours de creation ma couille..."

file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
hote1 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
hote1.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
hote1.save
puts "1 hote a etait cree 👩🏻‍🌾!"

file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
hote2 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
hote2.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
hote2.save
puts "2 hote a etait cree 👩🏻‍🌾!"

file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
hote3 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
hote3.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
hote3.save
puts "3 hote a etait cree 👩🏻‍🌾!"

file = URI.open("https://cdn.wbtourisme.be/sites/default/files/000016616-Julie%20Jacquemin-Les%20Chambres%20du%20Chat.jpg")
hote4 = Logement.create(categorie:"hote", title: "Belle hote 1", description: "Description de l hote 1", price: "80", email: "email@email.com", phone: "0324953423")
hote4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
hote4.save
puts "4 hote a etait cree 👩🏻‍🌾!"

puts "Les chambre d hote ont fini d etre cree ma couille... 👩🏻‍🌾"

puts "#{Logement.count} logements de toutes avec des categories differentes ont etaient cree! 🍻"


# Faune
puts "Les animaux sont en cours de creation ma grenouille 🐸..."

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal1 = Faune.create(categorie:"poisson1", nom: "raie manta", description: "Description de l'animal")
animal1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
animal1.save
puts "1 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal2 = Faune.create(categorie:"poisson2", nom: "raie manta", description: "Description de l'animal")
animal2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
animal2.save
puts "2 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal3 = Faune.create(categorie:"poisson3", nom: "raie manta", description: "Description de l'animal")
animal3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
animal3.save
puts "3 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal4 = Faune.create(categorie:"poisson4", nom: "raie manta", description: "Description de l'animal")
animal4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
animal4.save
puts "4 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal5 = Faune.create(categorie:"poisson5", nom: "raie manta", description: "Description de l'animal")
animal5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
animal5.save
puts "5 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal6 = Faune.create(categorie:"poisson6", nom: "raie manta", description: "Description de l'animal")
animal6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
animal6.save
puts "6 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal7 = Faune.create(categorie:"poisson7", nom: "raie manta", description: "Description de l'animal")
animal7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
animal7.save
puts "7 animal a etait cree 🐸!"

file = URI.open("https://medias.pourlascience.fr/api/v1/images/view/5be9a07d8fe56f7b21242cf6/wide_1300/image.jpg")
animal8 = Faune.create(categorie:"poisson8", nom: "raie manta", description: "Description de l'animal")
animal8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
animal8.save
puts "8 animal a etait cree 🐸!"


puts "Les animaux ont fini d etre cree mon crapeau... 🐸"
puts "#{Faune.count} animaux de toutes avec des categories differentes ont etaient cree! 🐸 🦁 🦊"
