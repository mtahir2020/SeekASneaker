# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

Order.destroy_all
Sneaker.destroy_all
User.destroy_all

user = User.new(email: "user@gmail.com", password: "123456")
user.save!
puts "creating"

# 10.times do
#   new_sneaker = Sneaker.create(
#     user: user,
#     name: Faker::Science.modifier,
#     price: Faker::Number.between(from: 10.0, to: 100.0),
#     description: Faker::Commerce.product_name
#   )

#   puts "creating #{new_sneaker}"
# end
