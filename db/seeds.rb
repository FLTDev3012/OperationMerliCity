# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activite.destroy_all

file = URI.open("https://www.bhf.org.uk/-/media/images/information-support/heart-matters/heart-matters/summer-2018/activity/tennis_racket_balls_ss_0618_noexp_620x400.jpg?rev=c18a71fbd05e4a91b4bbc40af01aafaa&hash=B6D9F53AC70899560495FC5D3205784D")
activite1 = Activite.create(title: "Tennis", description: "Tennis merlimont plage")
activite1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
activite1.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://www.hillstonestlucia.com.au/wp-content/uploads/2020/09/0S1A5968.jpg")
activite2 = Activite.create(title: "mini golf", description: "mini golf merlimont plage")
activite2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
activite2.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://cdt14.media.tourinsoft.eu/upload/135-3571-IMG.jpg")
activite3 = Activite.create(title: "char a voile", description: "char a voile merlimont plage")
activite3.photo.attach(io: file, filename: "v3.png", content_type: "image/png")
activite3.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite4 = Activite.create(title: "activite 4", description: "au surfer merlimont plage")
activite4.photo.attach(io: file, filename: "v4.png", content_type: "image/png")
activite4.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite5 = Activite.create(title: "activite 5", description: "au surfer merlimont plage")
activite5.photo.attach(io: file, filename: "v5.png", content_type: "image/png")
activite5.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite6 = Activite.create(title: "activite 6", description: "au surfer merlimont plage")
activite6.photo.attach(io: file, filename: "v6.png", content_type: "image/png")
activite6.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite7 = Activite.create(title: "activite 7", description: "au surfer merlimont plage")
activite7.photo.attach(io: file, filename: "v7.png", content_type: "image/png")
activite7.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite8 = Activite.create(title: "activite 8", description: "au surfer merlimont plage")
activite8.photo.attach(io: file, filename: "v8.png", content_type: "image/png")
activite8.save
puts "#{Activite.count} All activités have been created successfully!!!!"

puts "All the #{Activite.count} have been created successfully!"
