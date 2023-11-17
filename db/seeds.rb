# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require 'faker'

List.create(name: "Comedy")

List.create(name: "Drama")

List.create(name: "Horror")

puts "Lists have been created"

10.times do
  bookmarks = Bookmark.new(
    content: Faker::Movie.quote,
    
  )
  bookmarks.save!
end
puts "Bookm have been created"

Movie.destroy_all

puts 'Creating 10 fake posts...'
20.times do
  movies = Movie.new(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    url: "https://picsum.photos/200/300",
    rating: rand(0..10).to_f
  )
  movies.save!
end



puts 'Finished!'
