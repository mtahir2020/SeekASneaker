# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require 'faker'

Order.destroy_all
Sneaker.destroy_all
User.destroy_all

sneaker_photos = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1667650413/buty-air-max-95-xgmGZg_zjvbph.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1667650225/buty-meskie-acg-air-mada-ggH2b1_tkndkz.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1667649954/L41085500_bdece768700cff5e3ad71a32ef3f11a4_qb8ppr.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1667649390/sz_375378_a_jbl7ik.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1667653179/dm3004-200-5_bh9e0w.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1667653154/HOMME_PLUS_NIKE_1360000132048_6257_449x_2x_gcfpcp.jpg']

sneaker_filenames = ['v1667650413/buty-air-max-95-xgmGZg_zjvbph.jpg',
                  'buty-meskie-acg-air-mada-ggH2b1_tkndkz.jpg', 'L41085500_bdece768700cff5e3ad71a32ef3f11a4_qb8ppr.jpg',
                  'v1667653179/dm3004-200-5_bh9e0w.jpg', 'HOMME_PLUS_NIKE_1360000132048_6257_449x_2x_gcfpcp.jpg',
                  'v1667649390/sz_375378_a_jbl7ik.jpg']

user = User.new(email: "user@gmail.com", password: "123456")
user.save!
puts "creating"

counter = 0

6.times do
  sneaker_file = URI.open("#{sneaker_photos[counter]}")
  new_sneaker = Sneaker.create(
    user: user,
    name: Faker::Science.modifier,
    price: Faker::Number.between(from: 10.0, to: 100.0),
    description: Faker::Commerce.product_name

  )
  new_sneaker.photo.attach(io: sneaker_file, filename: "#{sneaker_filenames[counter]}", content_type: 'image/jpg')
  new_sneaker.save
  counter += 1
  puts "creating #{new_sneaker}"
end
