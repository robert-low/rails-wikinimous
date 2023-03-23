# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

puts 'Clearing database...'
Article.destroy_all

puts 'Generating articles...'

10.times do
  Article.create(
    title: Faker::Music.album,
    content: Faker::TvShows::BojackHorseman.tongue_twister
  )
end

puts "Done, #{Article.count} articles have been created."
