# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.find_or_create_by(name: "Matt")
User.find_or_create_by(name: "Victoria")
User.find_or_create_by(name: "Richard")
User.find_or_create_by(name: "Naomi")
User.find_or_create_by(name: "Akram")

Pizza.find_or_create_by(name: "White", price: 10, vegan: false)
Pizza.find_or_create_by(name: "Cheese", price: 8, vegan: false)
Pizza.find_or_create_by(name: "Cheese", price: 9, vegan: false)
Pizza.find_or_create_by(name: "Vegetable", price: 15, vegan: true)
Pizza.find_or_create_by(name: "Pepperoni", price: 10, vegan: false)
Pizza.find_or_create_by(name: "Sausage and Peppers", price: 9, vegan: false)
Pizza.find_or_create_by(name: "Tofu", price: 14, vegan: true)
Pizza.find_or_create_by(name: "Cheese", price: 10, vegan: false)
Pizza.find_or_create_by(name: "BBQ Chicken", price: 12, vegan: false)
Pizza.find_or_create_by(name: "Pepperoni", price: 20, vegan: false)


40.times do
  PizzaSlice.create(user_id: rand(1..5), pizza_id: rand(1..10))
end
