# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Movie.destroy_all
# puts "Creating movies"
#
# Movie.create(:title => 'Pretty Woman', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnZdvzKxFHLSgRcJuujrwiAslg5sgJ3StpOIFMqHk6At7WGtg4')
# Movie.create(:title => "Ocean's Eleven", :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjFDU7e4WTW0-DdukQZxoto_u6FRGprYlfjv7mTEcNC8lfbfTA', :year => "2001")
# Movie.create(:title => 'I Am Legend', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_uGdNFnONYKsGenJdp3ZlwToXNWGnNzNVqi7JB1z6j-a-zdqZ')
#
# puts "There are #{Movie.count} movies."
#
#
# Actor.destroy_all
# puts "Creating actors"
#
# Actor.create(:name => 'Julia Roberts', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcThLyB4H-3btSdgDvf5fWepd9KlEARzZwu0y0HbXFECvK4z4XXd')
# Actor.create(:name => 'George Clooney', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5kvpJ8JnK0q0nzje7r4esJS3QB-u7Ji_SGuP4lijAwScbNg9E')
# Actor.create(:name => 'Will Smith', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDLky1E7SidErM6rs4kPO-1Ts6n9Fp1DAWWvcRcq7aZBm5b4ri')
#
# puts "There are #{Actor.count} actors."
#
#
# Director.destroy_all
# puts "Creating directors"
#
# Director.create(:name => 'Garry Marshall', :image => 'https://s.yimg.com/uu/api/res/1.2/8.vrCXfjiAdO7rJdHTqnUg--~B/aD0xNTc3O3c9MjE2OTtzbT0xO2FwcGlkPXl0YWNoeW9u/http://media.zenfs.com/en_US/News/US-AFPRelax/000_hkg5659409.5756c074814.original.jpg')
# Director.create(:name => 'Steven Soderbergh', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbG3Ns9-k3I8gDLaza0ZesR2RccVPycuIwUZJZduzSTpCVkQQN')
# Director.create(:name => 'Francis Lawrence', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQvnJ1g5CJgobdjqjsjRmw2LGIdDuX04GkKBkQmeuwj_7z6KVd8')
#
# puts "There are #{Director.count} directors."
#
#
# Genre.destroy_all
# puts "Creating genres"
#
# Genre.create(:name => 'Romance')
# Genre.create(:name => 'Comedy')
# Genre.create(:name => 'Action')
# Genre.create(:name => 'Thriller')
# Genre.create(:name => 'Horror')
# Genre.create(:name => 'Drama')
#
# puts "There are #{Genre.count} genres."
#
#
# Library.destroy_all
# puts "Creating libraries"
#
# Library.create(:name => 'Blu-rays')
# Library.create(:name => 'DVDs')
#
# puts "There are #{Library.count} libraries."


User.destroy_all
puts "Creating users"

User.create(:name => 'Ana', :email => "ana@ga", :admin => true)
User.create(:name => 'Callum', :email => "callum@ga")

puts "There are #{User.count} users."
