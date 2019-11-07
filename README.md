#Movie Library

This web application allows the users to keep a record of all their movies, by organising them into libraries.
All the movie information is easily pulled from the Internet Movie Database (IMDB), using the Movie Database (IMDB Alternative) API, without the need for any user manipulation.

Once the user has movies in, these movies can then be searched or listed by movie, genre, actors or directors. There is also a feature that suggests movies to the user, depending on their genre, actor and/or director input.


##Screenshot of Log In
<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Login_page" width="300">

##Screenshot of Libraries
<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Create_libraries" width="300">

##Screenshot of Add Movie
<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Add_movie" width="300">

##Screenshot of Menu
<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Lists_menu" width="300">

##Screenshot of Search
<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Search_lists" width="300">



This is an application mainly built on Ruby on Rails 6.0.0, using Postgresql as the database for Active Record.
And it includes the following add-ons:

- bcrypt, for password encription;

- pg search, for easy query matching when accessing the database

- unirest, to get movies data using the Movie Database API

- sliding menu code was obtained from https://www.cssscript.com/sliding-drawer-menu-pure-css/

- hamburger icon used was from fonts awesome (https://fontawesome.com/)


Application is easily deployed to Heroku to be available for users.

Heroku deployment intructions:
=> Create project and set up
$ heroku create movie_library
$ git add .
$ git commit
$ git push heroku master
$ heroku run rails db:migrate
$ heroku run rails db:seed

=>When installed
$ heroku open
