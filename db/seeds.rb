# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activite.destroy_all

file = URI.open("https://a.cdn-hotels.com/gdcs/production186/d559/a82dee28-b6fd-417c-b51b-a535ddeb2f85.jpg?impolicy=fcrop&w=800&h=533&q=medium")
activite1 = Activite.create(title: "surf", description: "au surfer merlimont plage")
activite1.photo.attach(io: file, filename: "v1.png", content_type: "image/png")
activite1.save
Activite.create(title: "Activité 1", description: "Description de l'activité 1.")
Activite.create(title: "Activité 2", description: "Description de l'activité 2.")
Activite.create(title: "Activité 3", description: "Description de l'activité 3.")
puts "#{Activite.count} activités have been created successfully!"
