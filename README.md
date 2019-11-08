# Movie Library Web App

[Find it here.](https://anapgsilva-movielibrary.herokuapp.com/)

This web application allows the users to keep a record of all their movies, by organising them into libraries.
All the movie information is easily pulled from the Internet Movie Database (IMDB), using the Movie Database (IMDB Alternative) API, without the need for any user manipulation.

Once the user has movies in, these movies can then be searched or listed by movie, genre, actors or directors. There is also a feature that suggests movies to the user, depending on their genre, actor and/or director input.


## Log In

<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Login_page.png" width="500">

## Libraries
A library can be created with a specified name, for example: "Want to Watch".

<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Create_libraries.png" width="500">

## Add Movie
Once created a library, you can add as many movies as you want by searching (IMDB) for term words.

<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Add_movie.png" width="500">

## Menu of user lists
Once the user has some movies, these can be listed by different criteria, such as movies title/synopsis, actors name, genres and directors name.

<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Lists_menu.png" width="500">

## Search your lists
At any moment, the search bar can be used to search the user internal lists, using any term words.

<img src="https://anapgsilva.github.io/movie_library/app/assets/images/Search_lists.png" width="500">



This application was built on Ruby on Rails 6.0.0, using Postgresql as the database for Active Record.
And it includes the following add-on gems:

- bcrypt, for password encription;

- pg search, for easy query matching when accessing the database

- unirest, to get movies data using the Movie Database API

CSS add-ons were:
- sliding menu code (app/assets/stylesheets/styles.css) was obtained from https://www.cssscript.com/sliding-drawer-menu-pure-css/

- sliding menu css code was then adapted to use the hamburger icon from fonts awesome (https://fontawesome.com/). For this, I included the following link in the application.html.erb head:
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.min.css">
and added the following code to the style.css:
  .fa-bars:before {
    color: #168bd9; }


Application was then deployed to Heroku to be available for users.

Heroku deployment instructions:
_Create project and set up_
$ heroku create movie_library
$ git add .
$ git commit
$ git push heroku master
$ heroku run rails db:migrate
$ heroku run rails db:seed

_When installed_
$ heroku open
