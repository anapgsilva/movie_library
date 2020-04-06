# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

puts "Creating users"
u1 = User.create(:name => "Ana", :email => 'ana@ga', :password => "chicken", :admin => true)
u2 = User.create(:name => "Jeffrey", :email => 'j@ga', :password => "chicken", :admin => false)
u3 = User.create(:name => "Kait", :email => 'k@ga', :password => "chicken", :admin => false)

puts "There are #{User.count} users."


Movie.destroy_all
puts "Creating movies"

m1 = Movie.create(:title => 'Pretty Woman', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTnZdvzKxFHLSgRcJuujrwiAslg5sgJ3StpOIFMqHk6At7WGtg4', :user_id => u1.id)
m2 = Movie.create(:title => "Ocean's Eleven", :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQjFDU7e4WTW0-DdukQZxoto_u6FRGprYlfjv7mTEcNC8lfbfTA', :year => "2001", :user_id => u1.id)
m3 = Movie.create(:title => 'I Am Legend', :cover => 'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT_uGdNFnONYKsGenJdp3ZlwToXNWGnNzNVqi7JB1z6j-a-zdqZ', :user_id => u1.id)
m4 = Movie.create(:title => 'Quantum of Solace', :cover => 'https://m.media-amazon.com/images/M/MV5BMjZiYTUzMzktZWI5Yy00Mzk4LWFlMDgtYjRmNWU0Mzc0MzNiXkEyXkFqcGdeQXVyMjUzOTY1NTc@._V1_SX300.jpg', :user_id => u1.id)
m5 = Movie.create(:title => 'Casino Royale', :cover => 'https://m.media-amazon.com/images/M/MV5BMDI5ZWJhOWItYTlhOC00YWNhLTlkNzctNDU5YTI1M2E1MWZhXkEyXkFqcGdeQXVyNTIzOTk5ODM@._V1_SX300.jpg', :user_id => u1.id)
m6 = Movie.create(:title => 'The Lost World: Jurassic Park', :cover => 'https://m.media-amazon.com/images/M/MV5BMDFlMmM4Y2QtNDg1ZS00MWVlLTlmODgtZDdhYjY5YjdhN2M0XkEyXkFqcGdeQXVyNTI4MjkwNjA@._V1_SX300.jpg', :user_id => u1.id)
m7 = Movie.create(:title => "Terminator 2: Judgment Day", :cover => 'https://m.media-amazon.com/images/M/MV5BMGU2NzRmZjUtOGUxYS00ZjdjLWEwZWItY2NlM2JhNjkxNTFmXkEyXkFqcGdeQXVyNjU0OTQ0OTY@._V1_SX300.jpg', :user_id => u1.id)
m8 = Movie.create(:title => "Spectre", :cover => 'https://m.media-amazon.com/images/M/MV5BOWQ1MDE1NzgtNTQ4OC00ZjliLTllZDAtN2IyOTVmMTc5YjUxXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', :user_id => u1.id)
m10 = Movie.create(:title => 'Avengers: Age of Ultron', :cover => 'https://m.media-amazon.com/images/M/MV5BMTM4OGJmNWMtOTM4Ni00NTE3LTg3MDItZmQxYjc4N2JhNmUxXkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_SX300.jpg', :user_id => u2.id)
m11 = Movie.create(:title => 'Avengers: Endgame', :cover => 'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_SX300.jpg', :user_id => u2.id)
m12 = Movie.create(:title => 'Avengers: Infinity War', :cover => 'https://m.media-amazon.com/images/M/MV5BMjMxNjY2MDU1OV5BMl5BanBnXkFtZTgwNzY1MTUwNTM@._V1_SX300.jpg', :user_id => u2.id)
m13 = Movie.create(:title => 'The Avengers', :cover => 'https://m.media-amazon.com/images/M/MV5BNDYxNjQyMjAtNTdiOS00NGYwLWFmNTAtNThmYjU5ZGI2YTI1XkEyXkFqcGdeQXVyMTMxODk2OTU@._V1_SX300.jpg', :user_id => u2.id)
m14 = Movie.create(:title => 'Thor', :cover => 'https://m.media-amazon.com/images/M/MV5BOGE4NzU1YTAtNzA3Mi00ZTA2LTg2YmYtMDJmMThiMjlkYjg2XkEyXkFqcGdeQXVyNTgzMDMzMTg@._V1_SX300.jpg', :user_id => u2.id)
m20 = Movie.create(:title => 'Kill Bill: Vol. 1', :cover => 'https://m.media-amazon.com/images/M/MV5BNzM3NDFhYTAtYmU5Mi00NGRmLTljYjgtMDkyODQ4MjNkMGY2XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', :user_id => u3.id)
m21 = Movie.create(:title => 'Kill Bill: Vol. 2', :cover => 'https://m.media-amazon.com/images/M/MV5BNmFiYmJmN2QtNWQwMi00MzliLThiOWMtZjQxNGRhZTQ1MjgyXkEyXkFqcGdeQXVyNzQ1ODk3MTQ@._V1_SX300.jpg', :user_id => u3.id)
m22 = Movie.create(:title => 'Melancholia', :cover => 'https://m.media-amazon.com/images/M/MV5BMTk4NjM0MjI3MV5BMl5BanBnXkFtZTcwNjcxMDYzNg@@._V1_SX300.jpg', :user_id => u3.id)
m23 = Movie.create(:title => "Pan's Labyrinth", :cover => 'https://m.media-amazon.com/images/M/MV5BMTU3ODg2NjQ5NF5BMl5BanBnXkFtZTcwMDEwODgzMQ@@._V1_SX300.jpg', :user_id => u3.id)
m24 = Movie.create(:title => 'True Romance', :cover => 'https://m.media-amazon.com/images/M/MV5BMDViNjFjOWMtZGZhMi00NmIyLThmYzktODA4MzJhZDZhMDc5XkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', :user_id => u3.id)
m25 = Movie.create(:title => 'Mulholland Drive', :cover => 'https://m.media-amazon.com/images/M/MV5BNWM2MDZmMDgtYjViOS00YzBmLWE4YzctMDMyYTQ2YTc4MmVkXkEyXkFqcGdeQXVyNDk3NzU2MTQ@._V1_SX300.jpg', :user_id => u3.id)
m26 = Movie.create(:title => 'Blue Velvet', :cover => 'https://m.media-amazon.com/images/M/MV5BMWUwM2I2OTctOTRlNS00ZmRjLWI1NmEtNDc3Mjg0Zjg3Y2FiXkEyXkFqcGdeQXVyNzkwMjQ5NzM@._V1_SX300.jpg', :user_id => u3.id)
m27 = Movie.create(:title => 'Eraserhead', :cover => 'https://m.media-amazon.com/images/M/MV5BMDExYzg5YjQtMzE0Yy00OWJjLThiZTctMWI5MzhjM2RmNjA4L2ltYWdlXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_SX300.jpg', :user_id => u3.id)
m28 = Movie.create(:title => 'Belladonna of Sadness', :cover => 'https://m.media-amazon.com/images/M/MV5BNTY4NDVhMDYtMjVjZS00YTA0LTllMjItYjNlNTU0YWZmMmMxXkEyXkFqcGdeQXVyNDE5MTU2MDE@._V1_SX300.jpg', :user_id => u3.id)
m29 = Movie.create(:title => 'Hocus Pocus', :cover => 'https://m.media-amazon.com/images/M/MV5BMmQyYmY5ZTMtM2JkNi00NmM2LWE3ZmEtYWYzZmRkZDM0ZTdlXkEyXkFqcGdeQXVyMTQxNzMzNDI@._V1_SX300.jpg', :user_id => u3.id)

puts "There are #{Movie.count} movies."


Actor.destroy_all
puts "Creating actors"

a1 = Actor.create(:name => 'Julia Roberts')
a2 = Actor.create(:name => 'George Clooney')
a3 = Actor.create(:name => 'Will Smith')
a4 = Actor.create(:name => 'Robert Downey Jr.')
a5 = Actor.create(:name => 'Chris Evans')
a6 = Actor.create(:name => 'Mark Ruffalo')
a7 = Actor.create(:name => 'Chris Hemsworth')
a8 = Actor.create(:name => 'Daniel Craig')
a9 = Actor.create(:name => 'Judi Dench')
a10 = Actor.create(:name => 'Arnold Schwarzenegger')
a11 = Actor.create(:name => 'Jeff Goldblum')
a12 = Actor.create(:name => 'Tatsuya Nakadai')
a13 = Actor.create(:name => 'Dennis Hopper')
a14 = Actor.create(:name => 'Jeanne Bates')
a15 = Actor.create(:name => 'Bette Midler')
a16 = Actor.create(:name => 'Kirsten Dunst')
a17 = Actor.create(:name => 'Naomi Watts')
a18 = Actor.create(:name => 'Ivana Baquero')
a19 = Actor.create(:name => 'Christian Slater')
a20 = Actor.create(:name => 'Uma Thurman')

puts "There are #{Actor.count} actors."


Director.destroy_all
puts "Creating directors"

d1 = Director.create(:name => 'David Lynch')
d2 = Director.create(:name => 'Elichi Yamamoto')
d3 = Director.create(:name => 'Guillermo del Toro')
d4 = Director.create(:name => 'Kenny Ortega')
d5 = Director.create(:name => 'Lars von Trier')
d6 = Director.create(:name => 'Tony Scott')
d7 = Director.create(:name => 'Quentin Tarantino')
d8 = Director.create(:name => 'Joss Whedon')
d9 = Director.create(:name => 'Anthony Russo, Joe Russo')
d10 = Director.create(:name => 'Kenneth Branagh')
d11 = Director.create(:name => 'Garry Marshall')
d12 = Director.create(:name => 'Steven Soderbergh')
d13 = Director.create(:name => 'Francis Lawrence')
d14 = Director.create(:name => 'Marc Forster')
d15 = Director.create(:name => 'Martin Campbell')
d16 = Director.create(:name => 'Steven Spielberg')
d17 = Director.create(:name => 'James Cameron')
d18 = Director.create(:name => 'Sam Mendes')


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
g7 = Genre.create(:name => 'Animation')
g8 = Genre.create(:name => 'Fantasy')
g9 = Genre.create(:name => 'Mistery')
g10 = Genre.create(:name => 'Crime')
g11 = Genre.create(:name => 'Sci-Fi')
g12 = Genre.create(:name => 'Family')
g13 = Genre.create(:name => 'Adventure')
g14 = Genre.create(:name => 'War')

puts "There are #{Genre.count} genres."

Library.destroy_all
puts "Creating libraries"

l1 = Library.create(:name => 'Blu-rays', :user_id => u1.id)
l2 = Library.create(:name => 'DVDs', :user_id => u1.id)
l3 = Library.create(:name => 'Avengers', :user_id => u2.id)
l4 = Library.create(:name => "Kait's favs", :user_id => u3.id)

puts "There are #{Library.count} libraries."


puts "Directors and Movies"
d1.movies << m25 << m26 << m27
d2.movies << m28
d3.movies << m23
d4.movies << m29
d5.movies << m22
d6.movies << m24
d7.movies << m20 << m21
d8.movies << m10 << m13
d9.movies << m11 << m12
d10.movies << m14
d11.movies << m1
d12.movies << m2
d13.movies << m3
d14.movies << m4
d15.movies << m5
d16.movies << m6
d17.movies << m7
d18.movies << m8


puts "Movies into Libraries"
l4.movies << m20 << m21 << m22 << m23 << m24 << m25 << m26 << m27 << m28 << m29
l1.movies << m1 << m2 << m3 << m7
l2.movies << m4 << m5 << m6 << m8
l3.movies << m10 << m11 << m12 << m13 << m14


puts "Actors and Movies"
a1.movies << m1
a2.movies << m2
a3.movies << m3
a4.movies << m10 << m11 << m12 << m13
a5.movies << m10 << m11 << m12 << m13
a6.movies << m10 << m11 << m12 << m13
a7.movies << m10 << m11 << m12 << m13 << m14
a8.movies << m4 << m5 << m8
a9.movies << m4 << m5 << m8
a10.movies << m7
a11.movies << m6
a12.movies << m28
a13.movies << m26
a14.movies << m27
a15.movies << m29
a16.movies << m22
a17.movies << m25
a18.movies << m23
a19.movies << m24
a20.movies << m20 << m21

puts "Genres and Movies"
m1.genres << g1 << g2
m2.genres << g4 << g10
m3.genres << g4 << g6 << g11
m4.genres << g4 << g3 << g13
m5.genres << g4 << g3 << g13
m6.genres << g11 << g3 << g13
m7.genres << g3 << g11
m8.genres << g4 << g3 << g13
m10.genres << g3 << g11 << g13
m11.genres << g3 << g11 << g13 << g6
m12.genres << g3 << g11 << g13
m13.genres << g3 << g11 << g13
m14.genres << g3 << g8 << g13
m20.genres << g4 << g3 << g10
m21.genres << g4 << g3 << g10
m22.genres << g11 << g6
m23.genres << g14 << g8 << g6
m24.genres << g4 << g1 << g6 << g10
m25.genres << g4 << g9 << g6
m26.genres << g4 << g9 << g6
m27.genres << g5
m28.genres << g7 << g8 << g5 << g6
m29.genres << g2 << g12 << g8
