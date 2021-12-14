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
# scooter_photos = [(File.open('app/assets/images/scooter1.jpeg')), (File.open('app/assets/images/scooter2.jpeg')),(File.open('app/assets/images/scooter3.jpeg')),(File.open('app/assets/images/scooter3.jpeg')),(File.open('app/assets/images/scooter4.jpeg')),(File.open('app/assets/images/scooter5.jpeg')),(File.open('app/assets/images/scooter6.jpeg')),(File.open('app/assets/images/scooter7.jpeg')),(File.open('app/assets/images/scooter8.jpeg')),(File.open('app/assets/images/scooter9.jpeg')),(File.open('app/assets/images/scooter10.jpeg'))]

  user1 = User.new(email: "bibi@gamil.com", password: "azerty", username: "bibi")
    user1.save
     scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user1.id )
   scooter1 = File.open('app/assets/images/scooter1.jpeg')
   scooters.photo.attach(io: scooter1, filename: 'scooter1.jpeg', content_type: 'image/jpeg')
   scooters.save

    user2 = User.new(email: "baba@gamil.com", password: "azerty", username: "baba")
    user2.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user2.id )
   scooter2 = File.open('app/assets/images/scooter2.jpeg')
   scooters.photo.attach(io: scooter2, filename: 'scooter2.jpeg', content_type: 'image/jpeg')
   scooters.save

    user3 = User.new(email: "bobo@gamil.com", password: "azerty", username: "bobo")
    user3.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user3.id )
   scooter3 = File.open('app/assets/images/scooter3.jpeg')
   scooters.photo.attach(io: scooter3, filename: 'scooter3.jpeg', content_type: 'image/jpeg')
   scooters.save

    user4 = User.new(email: "bebe@gamil.com", password: "azerty", username: "bebe")
    user4.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user4.id )
   scooter4 = File.open('app/assets/images/scooter4.jpeg')
   scooters.photo.attach(io: scooter4, filename: 'scooter4.jpeg', content_type: 'image/jpeg')
   scooters.save

    # users = User.new(email: Faker::Internet.email, password: Faker::Lorem.words(number: 7), username: Faker::FunnyName.unique.name)
    # users.save

  #  scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: users.id )
  #  scooter1 = File.open('app/assets/images/scooter1.jpeg')
  #  scooters.photo.attach(io: scooter1, filename: 'scooter1.jpeg', content_type: 'image/jpeg')
  #  scooters.save
  # end
puts "db #{User.count}user create sans probleme"



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
