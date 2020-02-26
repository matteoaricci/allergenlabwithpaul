# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Recipe.destroy_all
Ingredient.destroy_all

matteo = User.create(name: "Matteo")

paul = User.create(name: "Paul")

bnutsmoothie = Recipe.create(name: "Banana Nut Smoothie", user_id: matteo.id)

sfriedrice = Recipe.create(name: "Shrimp Fried Rice", user_id: matteo.id)

banana = Ingredient.create(name: "Banana")
shrimp = Ingredient.create(name: "Shrimp")
rice = Ingredient.create(name: "Rice")
nut = Ingredient.create(name: "Nut")
milk = Ingredient.create(name: "Milk")