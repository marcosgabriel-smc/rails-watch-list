# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'uri'
require 'net/http'
require 'openssl'


url = "http://tmdb.lewagon.com/movie/top_rated?"

url_serialized = URI.open(url).read
top_rated_movies_object = JSON.parse(url_serialized)
top_25_movies = top_rated_movies_object['results'].first(25)
top_25_movies.each do |movie|
  puts movie['title']
end




# require 'faker'

# indiana_jones_poster = 'https://cdn.shopify.com/s/files/1/0057/3728/3618/files/indiana_jones_and_the_dial_of_destiny_ver2_xlg_500x749.jpg'
# star_wars_poster = 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/star-wars-episode-iii-revenge-of-the-sith_meciqzxa_500x749.jpg'
# chocolate_factory_poster = 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/46a3e3d50f8e50997af061201fea7385_a1b9810c-e37f-40e7-a85c-3a0b86cfab7b_500x749.jpg'
# departed_poster = 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/07159f2acf4d5706aa785e51405a04b5_56a2caed-b983-43cc-b824-327a301469c0_500x749.jpg'
# mrs_smith_poster = 'https://cdn.shopify.com/s/files/1/0057/3728/3618/products/bd30837c1c6dae16db1d31bd79cef06d_f3dc53f9-4557-4f73-9bf7-7e847b7d2fb1_500x749.jpg'

# films_posters = [indiana_jones_poster, star_wars_poster, chocolate_factory_poster, departed_poster, mrs_smith_poster]

# puts 'Erasing database'
# Movie.destroy_all

# puts 'Seeding your database'
# 10.times do
#   Movie.create!(
#     title: Faker::Movie.title,
#     overview: Faker::Quote.most_interesting_man_in_the_world,
#     poster_url: films_posters.sample,
#     rating: rand(10).to_f
#   )
# end

# puts 'Good to go!'
