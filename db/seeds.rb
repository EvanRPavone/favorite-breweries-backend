# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
b1 = Brewery.create(name: "Mason Jar Lager Co", city: "Fuquay-Varina", state: "North Carolina")

b1.favorites << [Favorite.find_or_create_by(name: "Happy Place")]