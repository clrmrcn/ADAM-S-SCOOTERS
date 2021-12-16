require 'faker'

 puts 'cleaning .....'
 Scooter.destroy_all
 User.destroy_all

  puts 'seeeding......'
# 10.times do
#   l = List.new(name:Faker::Cannabis.strain)
#   l.save
  # 10.times do
  #  users = User.new(email: "bibi@gmail.com", password: "azerty", username: "baba")
  #  users.save
  #  scooters = Scooter.new(model: "mbk", description: "sa marche bien", user_id: users.id)
  #  scooters.save
  # end
# scooter_photos = [(File.open('app/assets/images/scooter1.jpeg')), (File.open('app/assets/images/scooter2.jpeg')),(File.open('app/assets/images/scooter3.jpeg')),(File.open('app/assets/images/scooter3.jpeg')),(File.open('app/assets/images/scooter4.jpeg')),(File.open('app/assets/images/scooter5.jpeg')),(File.open('app/assets/images/scooter6.jpeg')),(File.open('app/assets/images/scooter7.jpeg')),(File.open('app/assets/images/scooter8.jpeg')),(File.open('app/assets/images/scooter9.jpeg')),(File.open('app/assets/images/scooter10.jpeg'))]

  user1 = User.new(email: "bibi@gmail.com", password: "azerty", username: "bibi")
    user1.save
     scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user1.id , price:17 , available: Date.today + 4.days, address:'16 Villa Gaudelet, Paris')
   scooter1 = File.open('app/assets/images/scooter6.jpeg')
   scooters.photo.attach(io: scooter1, filename: 'scooter6.jpeg', content_type: 'image/jpeg')
   scooters.save

    user2 = User.new(email: "baba@gmail.com", password: "azerty", username: "baba")
    user2.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user2.id, price:18 , available: Date.today + 5.days, address:'36 Avenue de la Pointe Rouge,Marseille')
   scooter2 = File.open('app/assets/images/scooter2.jpeg')
   scooters.photo.attach(io: scooter2, filename: 'scooter2.jpeg', content_type: 'image/jpeg')
   scooters.save

    user3 = User.new(email: "bobo@gmail.com", password: "azerty", username: "bobo")
    user3.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user3.id, price:19 , available: Date.today + 6.days, address:'32 Avenue de Toulon,Marseille')
   scooter3 = File.open('app/assets/images/scooter3.jpeg')
   scooters.photo.attach(io: scooter3, filename: 'scooter3.jpeg', content_type: 'image/jpeg')
   scooters.save

    user4 = User.new(email: "bebe@gmail.com", password: "azerty", username: "bebe")
    user4.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user4.id, price:16 , available: Date.today + 3.days, address:'34 Allée Turcat Méry,Marseille')
   scooter4 = File.open('app/assets/images/scooter7.jpeg')
   scooters.photo.attach(io: scooter4, filename: 'scooter7.jpeg', content_type: 'image/jpeg')
   scooters.save

   user5 = User.new(email: "bubu@gmail.com", password: "azerty", username: "bubu")
    user5.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user5.id, price:15 , available: Date.today + 2.days, address:'17 Rue Henry Cousinou,Marseille')
   scooter5 = File.open('app/assets/images/scooter8.jpg')
   scooters.photo.attach(io: scooter5, filename: 'scooter8.jpg', content_type: 'image/jpg')
   scooters.save

   user6 = User.new(email: "bzbz@gmail.com", password: "azerty", username: "bzbz")
    user6.save
      scooters = Scooter.new(model: Faker::Vehicle.manufacture, description: Faker::Lorem.paragraph, user_id: user6.id, price:14 , available: Date.today + 1.days, address:'44 Avenue du Prado,Marseille' )
   scooter6 = File.open('app/assets/images/scooter1.jpeg')
   scooters.photo.attach(io: scooter6, filename: 'scooter1.jpeg', content_type: 'image/jpeg')
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
