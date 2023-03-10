require 'json'
require 'open-uri'


url = "https://tmdb.lewagon.com/movie/top_rated"
"https://tmdb.lewagon.com/t/p/w500"


data = JSON.parse(URI.open(url).read)["results"]

data.each do |movie|
  title = movie["title"]
  overview = movie["overview"]
  poster_url = movie["poster_path"]

  Movie.create(title: title, overview: overview , poster_url: poster_url)
end

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
