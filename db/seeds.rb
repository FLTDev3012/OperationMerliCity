# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Activite.destroy_all

Activite.create(title: "Activité 1", description: "Description de l'activité 1.")
Activite.create(title: "Activité 2", description: "Description de l'activité 2.")
Activite.create(title: "Activité 3", description: "Description de l'activité 3.")
puts "#{Activite.count} activités have been created successfully!"
