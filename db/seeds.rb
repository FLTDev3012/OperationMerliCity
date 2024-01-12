# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activite.destroy_all

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite1 = Activite.create(title: "activite 1", description: "au surfer merlimont plage")
activite1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
activite1.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite2 = Activite.create(title: "activite 2", description: "au surfer merlimont plage")
activite2.photo.attach(io: file, filename: "v2.png", content_type: "image/png")
activite2.save
puts "#{Activite.count} activités have been created successfully!"

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite3 = Activite.create(title: "activite 3", description: "au surfer merlimont plage")
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
