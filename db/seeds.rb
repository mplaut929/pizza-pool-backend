# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.find_or_create_by(name: "Matt")
User.find_or_create_by(name: "Victoria")

Pizza.find_or_create_by(name: "White", price: 10, vegan: false)
Pizza.find_or_create_by(name: "Cheese", price: 8, vegan: false)


PizzaSlice.find_or_create_by(user_id: 1, pizza_id: 2)
PizzaSlice.find_or_create_by(user_id: 2, pizza_id: 1)
PizzaSlice.find_or_create_by(user_id: 1, pizza_id: 2)
