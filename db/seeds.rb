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
david = User.create!(user_name: 'Dreamy Dave', first_name: "David", last_name: "Grey", email: "david@gmail.com", password: "password")
san = User.create!(user_name: 'Sketchy San', first_name: "San", last_name: "Jay", email: "jay@gmail.com", password: "password")
michelle = User.create!(user_name: 'Michalien', first_name: "Michelle", last_name: "Chege", email: "michelle@gmail.com", password: "password")
annie = User.create!(user_name: 'Aweseome Annie', first_name: "Annie", last_name: "Shouket", email: "annie@gmail.com", password: "password")
gabriel = User.create!(user_name: 'Go Getter Gab', first_name: "Gabriel", last_name: "Atak", email: "gabriel@gmail.com", password: "password")
marco = User.create!(user_name: 'Money Marco', first_name: "Marco", last_name: "Ricci", email: "marco@gmail.com", password: "password")

puts 'Users Created'
# Create Pitchs
puts 'Creating Pitches...'
Pitch.create(name: "Dimyron OS", description: "Dimyron OS is a next-generation mobile operating system seamlessly integrating Nettpage, Pasanda, and AI-driven tools—designed for users who want a smarter, more connected, and future-ready digital experience.", user: david)
Pitch.create(name: "Pasanda – The Ultimate Food & Travel Hub", description: "Pasanda merges ride-hailing, food delivery, and AI-powered grocery shopping with Yummo for food explorers and Pasanda Chef for interactive cooking tutorials—creating the ultimate experience for foodies and travelers.", user: san)
Pitch.create(name: "Nettpage – The Future of Social E-Commerce", description: "Nettpage blends social media with e-commerce, letting users connect, shop, and sell in one seamless experience. Businesses engage directly with customers, while shoppers explore, purchase, and share—all in a dynamic social marketplace.", user: michelle)

Pitch.create(name: "SwiftServe", description: "Smart routing and predictive demand analytics to streamline food deliveries for restaurants and couriers.", user: annie)
Pitch.create(name: "EchoLink", description: "Send customized voice messages with AI-enhanced tone, emotion, and language translation for global communication.", user: gabriel)
Pitch.create(name: "Pitch Perfect", description: "Pitch Perfect vision is to be an open-source platform that will ultimately enable every Le Wagon student to find a safe space to contribute and practice their skills during and post Bootcamp with peer support from the alumni community.", user: marco)

puts 'Pitches Created'
