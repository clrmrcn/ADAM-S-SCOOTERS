require 'faker'

 puts 'cleaning .....'
 Scooter.destroy_all
 User.destroy_all

  puts 'seeeding......'
# 10.times do
#   l = List.new(name:Faker::Cannabis.strain)
#   l.save
  # 10.times do
  #  users = User.new(email: "bibi@gamil.com", password: "azerty", username: "baba")
  #  users.save
  #  scooters = Scooter.new(model: "mbk", description: "sa marche bien", user_id: users.id)
  #  scooters.save
  # end
  10.times do
   users = User.new(email: Faker::Internet.email, password: Faker::Lorem.words(number: 7), username: Faker::FunnyName.unique.name)
   users.save
   scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: users.id)
   scooters.save
  end
puts "db #{User.count}create sans probleme"



# require 'json'
# require 'open-uri'
# require 'pry-byebug'
# require 'faker'

# puts 'cleaning .....'
# Bookmark.destroy_all
# Movie.destroy_all
# List.destroy_all

# puts 'seeeding......'

# url = 'http://tmdb.lewagon.com/movie/top_rated'
# movies_serialized = URI.open(url).read
#  movies = JSON.parse(movies_serialized)


# movies['results'].each do |movie|
#   title = movie['title']
#   overview = movie['overview']
#   poster_url = movie['backdrop_path']
#   rating = movie['vote_average'].to_i

#   Movie.create!(title: title, overview: overview, poster_url: poster_url, rating: rating)
#   puts 'created 1 movie ....'
# end

# puts 'seeding done'

# 10.times do
#   l = List.new(name:Faker::Cannabis.strain)
#   l.save
#   puts 'Created one bookmarks'
# end

# 100.times do
#   b = Bookmark.new(comment: 'Random', movie: Movie.all.sample, list: List.all.sample)
#   b.save
#   puts 'Created one bookmarks'
# end

# file = URI.open('https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg')
# list = List.new(title: 'NES', body: "A great console")
# list.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
