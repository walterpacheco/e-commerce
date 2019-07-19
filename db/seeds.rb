# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.destroy_all
AdminUser.destroy_all
User.destroy_all

12.times do |i|
  Product.create(
    name: Faker::Commerce.product_name,
    price: Faker::Commerce.price.to_i,
    photo: "http://lorempixel.com/400/200/nature/#{i + 1}/"
  )
end
 AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

#  User.create(
#    name:'tulio',
#   email: 'tulio@desafio.com',
#   password:'123456',
#   encrypted_password: '123456',
#   role: 0
#  )