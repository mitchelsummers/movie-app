# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Actor.create({first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock"})
Actor.create({first_name: "Tom", last_name: "Cruise", known_for: "being nuts"})
Actor.create({first_name: "Seth", last_name: "Rogen", known_for: "being high"})