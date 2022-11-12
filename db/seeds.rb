# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"
require "faker"

Order.destroy_all
Sneaker.destroy_all
User.destroy_all

# sneaker_photos = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1667650413/buty-air-max-95-xgmGZg_zjvbph.jpg',
#   'https://res.cloudinary.com/dchcu1duv/image/upload/v1667650225/buty-meskie-acg-air-mada-ggH2b1_tkndkz.jpg',
#   'https://res.cloudinary.com/dchcu1duv/image/upload/v1667649954/L41085500_bdece768700cff5e3ad71a32ef3f11a4_qb8ppr.jpg',
#   'https://res.cloudinary.com/dchcu1duv/image/upload/v1667649390/sz_375378_a_jbl7ik.jpg',
#   'https://res.cloudinary.com/dchcu1duv/image/upload/v1667653179/dm3004-200-5_bh9e0w.jpg',
#   'https://res.cloudinary.com/dchcu1duv/image/upload/v1667653154/HOMME_PLUS_NIKE_1360000132048_6257_449x_2x_gcfpcp.jpg']

# sneaker_filenames = ['v1667650413/buty-air-max-95-xgmGZg_zjvbph.jpg',
#                   'buty-meskie-acg-air-mada-ggH2b1_tkndkz.jpg', 'L41085500_bdece768700cff5e3ad71a32ef3f11a4_qb8ppr.jpg',
#                   'v1667653179/dm3004-200-5_bh9e0w.jpg', 'HOMME_PLUS_NIKE_1360000132048_6257_449x_2x_gcfpcp.jpg',
#                   'v1667649390/sz_375378_a_jbl7ik.jpg']

user = User.new(email: "magdalena@gmail.com", username: "Mags", password: "123456")
user.save!
puts "creating"

user_2 = User.new(email: "angee@gmail.com", username: "Angee", password: "123456")
user_2.save!
puts "creating"



# sneaker_file = URI.open("#{sneaker_photos[0]}")
# sneaker_1 = Sneaker.create(
#   user: ,
#   name: ,
#   price: ,
#   description:
# )
# new_sneaker.photo.attach(io: sneaker_file, filename: "#{sneaker_filenames[0]}", content_type: 'image/jpg')
#   new_sneaker.save
#   0 += 1
#   puts "creating #{new_sneaker}"
# end

# 6.times do
#   sneaker_file = URI.open("#{sneaker_photos[0]}")
#   new_sneaker = Sneaker.create(
#     user: user,
#     name: Faker::Science.modifier,
#     price: Faker::Number.between(from: 10.0, to: 100.0),
#     description: Faker::Commerce.product_name
#   )
#   new_sneaker.photo.attach(io: sneaker_file, filename: "#{sneaker_filenames[0]}", content_type: 'image/jpg')
#   new_sneaker.save
#   0 += 1
#   puts "creating #{new_sneaker}"
# end

sneaker_1_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668263335/10-11-22_JF_BB550NCF_m1_1_id1p3u.jpg',
'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263341/10-11-22_JF_BB550NCF_3_1_gl7gli.jpg']

sneaker_1_filenames = ['10-11-22_JF_BB550NCF_m1_1_id1p3u.jpg', '10-11-22_JF_BB550NCF_3_1_gl7gli.jpg']

sneaker_2_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668263310/11-11-2022_EC_KFA30-020_m1_1_gccrb6.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263318/11-11-2022_EC_KFA30-020_3_1_irekgt.jpg']

sneaker_2_filenames = ['11-11-2022_EC_KFA30-020_m1_1_gccrb6.jpg', '11-11-2022_EC_KFA30-020_3_1_irekgt.jpg']

sneaker_3_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668262876/27-10-2022_EC_BB550PWA_m1_1_waikbh.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263289/27-10-2022_EC_BB550PWA_3_1_h2mm91.jpg']

  sneaker_3_filenames = ['v1668262876/27-10-2022_EC_BB550PWA_m1_1_waikbh.jpg', '27-10-2022_EC_BB550PWA_3_1_h2mm91.jpg']

sneaker_4_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668263357/17-05-2022_BLR_MR530EMA_1_1_z1jl3w.jpg',

  'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263365/17-05-2022_BLR_MR530EMA_3_1_sx6vmd.jpg']

  sneaker_4_filenames = ['17-05-2022_BLR_MR530EMA_1_1_z1jl3w.jpg', '11-11-2022_EC_L41706200_3_1_vzsk5p.jpg']

sneaker_5_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668263380/11-11-2022_EC_L41706200_m1_1_dbhdr1.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263387/11-11-2022_EC_L41706200_3_1_vzsk5p.jpg']


  sneaker_5_filenames = ['11-11-2022_EC_L41706200_m1_1_dbhdr1.jpg', '11-11-2022_EC_L41706200_3_1_vzsk5p.jpg']

sneaker_6_photo = ['https://res.cloudinary.com/dchcu1duv/image/upload/v1668263408/15-09-2022_jc_dj0292-101_1_lppqbi.jpg',
  'https://res.cloudinary.com/dchcu1duv/image/upload/v1668263415/15-09-2022_jc_dj0292-101_3_er0hch.jpg']

  sneaker_6_filenames = ['15-09-2022_jc_dj0292-101_1_lppqbi.jpg', '15-09-2022_jc_dj0292-101_3_er0hch.jpg']

  sneaker_1_file = URI.open(sneaker_1_photo[0])
  sneaker_1a_file = URI.open(sneaker_1_photo[1])
  sneaker_1 = Sneaker.create(
    user: user,
    name: 'NEW BALANCE BB550PWA',
    price: '129',
    description: 'WHITE & GREY'
  )
 sneaker_1.photos.attach(io: sneaker_1_file, filename: "#{sneaker_1_filenames[0]}", content_type: 'image/jpg')
 sneaker_1.photos.attach(io: sneaker_1a_file, filename: "#{sneaker_1_filenames[1]}", content_type: 'image/jpg')
    sneaker_1.save
    puts "creating #{sneaker_1}"

  sneaker_2_file = URI.open(sneaker_2_photo[0])
  sneaker_2a_file = URI.open(sneaker_2_photo[1])
  sneaker_2 = Sneaker.create(
    user: user_2,
    name: 'ROA KATHARINA HIKING SNEAKER',
    price: 129,
    description: 'LILAC'
  )
  sneaker_2.photos.attach(io: sneaker_2_file, filename: "#{sneaker_2_filenames[0]}", content_type: 'image/jpg')
  sneaker_2.photos.attach(io: sneaker_2a_file, filename: "#{sneaker_2_filenames[1]}", content_type: 'image/jpg')
    sneaker_2.save
    puts "creating #{sneaker_2}"

  sneaker_3_file = URI.open(sneaker_3_photo[0])
  sneaker_3a_file = URI.open(sneaker_3_photo[1])
  sneaker_3 = Sneaker.create(
    user: user_2,
    name: 'NEW BALANCE BB550NCF',
    price: 109,
    description: 'SEA SALT'
  )
  sneaker_3.photos.attach(io: sneaker_3_file, filename: "#{sneaker_3_filenames[0]}", content_type: 'image/jpg')
  sneaker_3.photos.attach(io: sneaker_3a_file, filename: "#{sneaker_3_filenames[1]}", content_type: 'image/jpg')
    sneaker_3.save
    puts "creating #{sneaker_3}"

  sneaker_4_file = URI.open(sneaker_4_photo[0])
  sneaker_4a_file = URI.open(sneaker_4_photo[1])
  sneaker_4 = Sneaker.create(
    user: user,
    name: 'NEW BALANCE MR530EMA',
    price: 95,
    description: 'WHITE'
  )
  sneaker_4.photos.attach(io: sneaker_4_file, filename: "#{sneaker_4_filenames[0]}", content_type: 'image/jpg')
  sneaker_4.photos.attach(io: sneaker_4a_file, filename: "#{sneaker_4_filenames[1]}", content_type: 'image/jpg')
    sneaker_4.save
    puts "creating #{sneaker_4}"

  sneaker_5_file = URI.open(sneaker_5_photo[0])
  sneaker_5a_file = URI.open(sneaker_5_photo[1])
  sneaker_5 = Sneaker.create(
    user: user_2,
    name: 'SALOMON XT-QUEST',
    price: 165,
    description: 'GOLDEN OAK & ACORN'
  )
  sneaker_5.photos.attach(io: sneaker_5_file, filename: "#{sneaker_5_filenames[0]}", content_type: 'image/jpg')
  sneaker_5.photos.attach(io: sneaker_5a_file, filename: "#{sneaker_5_filenames[1]}", content_type: 'image/jpg')
    sneaker_5.save
    puts "creating #{sneaker_5}"

  sneaker_6_file = URI.open(sneaker_6_photo[0])
  sneaker_6a_file = URI.open(sneaker_6_photo[1])
  sneaker_6 = Sneaker.create(
    user: user,
    name: 'IKE BLAZER LOW PLATFORM W',
    price: 85,
    description: 'WHITE, BLACK, SAIL & ORANGE'
  )
  sneaker_6.photos.attach(io: sneaker_6_file, filename: "#{sneaker_6_filenames[0]}", content_type: 'image/jpg')
  sneaker_6.photos.attach(io: sneaker_6a_file, filename: "#{sneaker_6_filenames[1]}", content_type: 'image/jpg')
    sneaker_6.save
    puts "creating #{sneaker_6}"
