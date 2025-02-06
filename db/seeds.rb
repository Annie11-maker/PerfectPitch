# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# 1. Clean the database :rubbish_bin:
puts 'Cleaning database...'


Pitch.destroy_all
User.destroy_all

# 2. Create the instances :building_construction:
puts 'Creating users...'
david = User.create!(user_name: 'Dreamy Dave', first_name: "David", last_name: "Grey", email: "david@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL1dPQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--7986f34ff3625ee44e202a9bebaf27dfccc5f9ae/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJY0c1bkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--df4f7d63fe19fb30952f52eed6dffc392a97578c/David_IUKEDI_30-removebg-preview.png")
san = User.create!(user_name: 'Sketchy San', first_name: "San", last_name: "Jay", email: "jay@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBL0xVQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--d4f3e871cb1c01400b6e5c072384fcba6563c778/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2RTNKbGMybDZaVjkwYjE5bWFXeHNXd2hwQWNocEFjaDdCam9KWTNKdmNEb09ZWFIwWlc1MGFXOXUiLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--b67d9ded4d28d0969fbb98b4c21b79257705a99a/_MG_1195-12.jpg")
michelle = User.create!(user_name: 'Michalien', first_name: "Michelle", last_name: "Chege", email: "michelle@gmail.com", password: "password", pic_url: "https://avatars.githubusercontent.com/u/169837635?v=4")
annie = User.create!(user_name: 'Aweseome Annie', first_name: "Annie", last_name: "Shouket", email: "annie@gmail.com", password: "password", pic_url: "https://d26jy9fbi4q9wx.cloudfront.net/rails/active_storage/representations/proxy/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBM3lrQXc9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--b21defc8cea2dfe1cf35861ea62c8db87bdb0db1/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lKYW5CbFp3WTZCa1ZVT2hOeVpYTnBlbVZmZEc5ZlptbHNiRnNJYVFISWFRSElld1k2Q1dOeWIzQTZEbUYwZEdWdWRHbHZiZz09IiwiZXhwIjpudWxsLCJwdXIiOiJ2YXJpYXRpb24ifX0=--23cdbdf9871e44adeb4d843a03b0793a5f08394b/IMG_7483.jpeg")
gabriel = User.create!(user_name: 'Go Getter Gab', first_name: "Gabriel", last_name: "Atak", email: "gabriel@gmail.com", password: "password", pic_url: "https://avatars.githubusercontent.com/u/87481139?v=4")
marco = User.create!(user_name: 'Money Marco', first_name: "Marco", last_name: "Ricci", email: "marco@gmail.com", password: "password", pic_url: "")

puts 'Users Created'
# Create Pitchs
puts 'Creating Pitches...'
Pitch.create(name: "Dimyron OS", image_url: "https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/1.jpg", description: "Dimyron OS is a next-generation mobile operating system seamlessly integrating Nettpage, Pasanda, and AI-driven tools—designed for users who want a smarter, more connected, and future-ready digital experience.", user: david)
Pitch.create(name: "Pasanda – The Ultimate Food & Travel Hub", image_url:"https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/2.jpg", description: "Pasanda merges ride-hailing, food delivery, and AI-powered grocery shopping with Yummo for food explorers and Pasanda Chef for interactive cooking tutorials—creating the ultimate experience for foodies and travelers.", user: san)
Pitch.create(name: "Nettpage – The Future of Social E-Commerce", image_url:"https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/3.jpg" ,description: "Nettpage blends social media with e-commerce, letting users connect, shop, and sell in one seamless experience. Businesses engage directly with customers, while shoppers explore, purchase, and share—all in a dynamic social marketplace.", user: michelle)

Pitch.create(name: "SwiftServe", image_url:"https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/4.jpg", description: "Smart routing and predictive demand analytics to streamline food deliveries for restaurants and couriers.", user: annie)
Pitch.create(name: "EchoLink", image_url:"https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/5.jpg", description: "Send customized voice messages with AI-enhanced tone, emotion, and language translation for global communication.", user: gabriel)
Pitch.create(name: "Pitch Perfect", image_url:"https://raw.githubusercontent.com/StartBootstrap/startbootstrap-creative/refs/heads/master/dist/assets/img/portfolio/fullsize/6.jpg", description: "Pitch Perfect vision is to be an open-source platform that will ultimately enable every Le Wagon student to find a safe space to contribute and practice their skills during and post Bootcamp with peer support from the alumni community.", user: marco)
puts 'Pitches Created'
