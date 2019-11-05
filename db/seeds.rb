# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
puts "Creating movies"

m1 = Movie.create(:title => 'Pretty Woman', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnZdvzKxFHLSgRcJuujrwiAslg5sgJ3StpOIFMqHk6At7WGtg4', :user_id => 1)
m2 = Movie.create(:title => "Ocean's Eleven", :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjFDU7e4WTW0-DdukQZxoto_u6FRGprYlfjv7mTEcNC8lfbfTA', :year => "2001", :user_id => 1)
m3 = Movie.create(:title => 'I Am Legend', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_uGdNFnONYKsGenJdp3ZlwToXNWGnNzNVqi7JB1z6j-a-zdqZ', :user_id => 1)

puts "There are #{Movie.count} movies."


Actor.destroy_all
puts "Creating actors"

a1 = Actor.create(:name => 'Julia Roberts', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcThLyB4H-3btSdgDvf5fWepd9KlEARzZwu0y0HbXFECvK4z4XXd')
a2 = Actor.create(:name => 'George Clooney', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcR5kvpJ8JnK0q0nzje7r4esJS3QB-u7Ji_SGuP4lijAwScbNg9E')
a3 = Actor.create(:name => 'Will Smith', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSDLky1E7SidErM6rs4kPO-1Ts6n9Fp1DAWWvcRcq7aZBm5b4ri')

puts "There are #{Actor.count} actors."
# #
# #
Director.destroy_all
puts "Creating directors"

d1 = Director.create(:name => 'Garry Marshall', :image => 'https://s.yimg.com/uu/api/res/1.2/8.vrCXfjiAdO7rJdHTqnUg--~B/aD0xNTc3O3c9MjE2OTtzbT0xO2FwcGlkPXl0YWNoeW9u/http://media.zenfs.com/en_US/News/US-AFPRelax/000_hkg5659409.5756c074814.original.jpg')
d2 = Director.create(:name => 'Steven Soderbergh', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTbG3Ns9-k3I8gDLaza0ZesR2RccVPycuIwUZJZduzSTpCVkQQN')
d3 = Director.create(:name => 'Francis Lawrence', :image => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQvnJ1g5CJgobdjqjsjRmw2LGIdDuX04GkKBkQmeuwj_7z6KVd8')

puts "There are #{Director.count} directors."
#
# #
Genre.destroy_all
puts "Creating genres"

g1 = Genre.create(:name => 'Romance')
g2 = Genre.create(:name => 'Comedy')
g3 = Genre.create(:name => 'Action')
g4 = Genre.create(:name => 'Thriller')
g5 = Genre.create(:name => 'Horror')
g6 = Genre.create(:name => 'Drama')

puts "There are #{Genre.count} genres."
#
# #
Library.destroy_all
puts "Creating libraries"

l1 = Library.create(:name => 'Blu-rays', :user_id => 5)
# l2 = Library.create(:name => 'DVDs', :user_id => 5)
#
# puts "There are #{Library.count} libraries."



puts "Directors and Movies"
d1.movies << m1
d2.movies << m2
d3.movies << m3

puts "Actors and Movies"
m1.actors << a1
m2.actors << a2
m3.actors << a3

puts "Genres and Movies"
m1.genres << g1 << g2
m2.genres << g2 << g3 << g4
m3.genres << g4 << g5 << g6
