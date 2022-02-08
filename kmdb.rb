# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy
# - Movie data includes the movie title, year released, MPAA rating,
#   and director
# - A movie has a single director
# - A person can be the director of and/or play a role in a movie
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Execute the migration files to create the tables in the database. Add the
#   relevant association methods in each model. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids and
#   delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through it to display output similar to the following
#   sample "report". (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time, before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Christopher Nolan
# The Dark Knight        2008           PG-13  Christopher Nolan
# The Dark Knight Rises  2012           PG-13  Christopher Nolan

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

Movie.destroy_all
Person.destroy_all
Role.destroy_all

# Generate models and tables, according to the domain model
# TODO!

# STUDENT NOTE - I am unaware of why the code I used to generate models and tables did not work here but did in the terminal. I have copied what I used below for your review.
#rails generate model Movie title :string year_released:string rated:string person_id :string 
#rails generate model People  name:string
#rails generate model Role  movieid:integer personid:integer character:string
#rails db:migrate


# Insert data into your database that reflects the sample data shown above
# Do not use hard-coded foreign key IDs.
# TODO!

movie = Movie.new
movie.title = "Batman Begins"
movie.year_released = "2005"
movie.rated = "PG-13"
movie.person_id =  "Christopher Nolan"
movie.save

movie = Movie.new
movie.title = "The Dark Knight"
movie.year_released= "2008"
movie.rated = "PG-13"
movie.person_id =  "Christopher Nolan"
movie.save

movie = Movie.new
movie.title = "The Dark Knight Rises"
movie.year_released = "2012"
movie.rated = "PG-13"
movie.person_id =  "Christopher Nolan"
movie.save

person = Person.new
person.name = "Christopher Nolan"
person.save

person = Person.new
person.name = "Christian Bale"
person.save

person = Person.new
person.name = "Michael Caine"
person.save

person = Person.new
person.name = "Liam Neeson"
person.save

person = Person.new
person.name = "Katie Holmes"
person.save

person = Person.new
person.name = "Gary Oldman"
person.save

person = Person.new
person.name = "Heath Ledger"
person.save

person = Person.new
person.name = "Aaron Eckhart"
person.save

person = Person.new
person.name = "Maggie Gyllenhaal"
person.save

person = Person.new
person.name = "Tom Hardy"
person.save

person = Person.new
person.name = "Joseph Gordon-Levitt"
person.save

person = Person.new
person.name = "Anne Hathaway"
person.save


role = Role.new
role.movieid = "Batman Begins"
role.personid =  "Christian Bale"
role.character = "Bruce Wayne"
role.save

role = Role.new
role.movieid = "Batman Begins"
role.personid =  "Michael Caine"
role.character = "Alfred"
role.save

role = Role.new
role.movieid = "Batman Begins"
role.personid =  "Liam Neeson"
role.character = "Ra's Al Ghul"
role.save

role = Role.new
role.movieid = "Batman Begins"
role.personid =  "Katie Holmes"
role.character = "Rachel Dawes"
role.save

role = Role.new
role.movieid = "Batman Begins"
role.personid =  "Gary Oldman"
role.character = "Commissioner Gordon"
role.save

role = Role.new
role.movieid = "The Dark Knight"
role.personid =  "Christopher Nolan"
role.character = "Bruce Wayne"
role.save

role = Role.new
role.movieid = "The Dark Knight"
role.personid =  "Heath Ledger"
role.character = "Joker"
role.save

role = Role.new
role.movieid = "The Dark Knight"
role.personid = "Aaron Eckhart"
role.character = "Harvey Dent"
role.save

role = Role.new
role.movieid = "The Dark Knight"
role.personid = "Michael Caine"
role.character = "Alfred"
role.save

role = Role.new
role.movieid = "The Dark Knight"
role.personid = "Maggie Gyllenhaal"
role.character = "Rachel Dawes"
role.save

role = Role.new
role.movieid = "The Dark Knight Rises"
role.personid = "Christopher Nolan"
role.character = "Bruce Wayne"
role.save

role = Role.new
role.movieid = "The Dark Knight Rises"
role.personid = "Gary Oldman"
role.character = "Commissioner Gordon"
role.save

role = Role.new
role.movieid = "The Dark Knight Rises"
role.personid = "Tom Hardy"
role.character = "Bane"
role.save

role = Role.new
role.movieid = "The Dark Knight Rises"
role.personid = "Joseph Gordon-Levitt"
role.character = "John Blake"
role.save

role = Role.new
role.movieid = "The Dark Knight Rises"
role.personid = "Anne Hathaway"
role.character = "Selina Kyle"
role.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

#puts "#{movie1.title} #{movie1.year_released} #{movie1.rated} #{movie1.person_id}"
#puts "#{movie2.title} #{movie2.year_released} #{movie2.rated} #{movie2.person_id}"
#puts "#{movie3.title} #{movie3.year_released} #{movie3.rated} #{movie3.person_id}"

#puts Movie.all.count
#puts Person.all.count
#puts Role.all.count

newvar = Movie.all

p newvar.read_attribute(:title)




# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

#puts "#{role1.movieid} #{role1.personid} #{role1.character}"
#puts "#{role2.movieid} #{role2.personid} #{role2.character}"
#puts "#{role3.movieid} #{role3.personid} #{role3.character}"
#puts "#{role4.movieid} #{role4.personid} #{role4.character}"
#puts "#{role5.movieid} #{role5.personid} #{role5.character}"
#puts "#{role6.movieid} #{role6.personid} #{role6.character}"
#puts "#{role7.movieid} #{role7.personid} #{role7.character}"
#puts "#{role8.movieid} #{role8.personid} #{role8.character}"
#puts "#{role9.movieid} #{role9.personid} #{role9.character}"
#puts "#{role10.movieid} #{role10.personid} #{role10.character}"
#puts "#{role11.movieid} #{role11.personid} #{role11.character}"
#puts "#{role12.movieid} #{role12.personid} #{role12.character}"
#puts "#{role13.movieid} #{role13.personid} #{role13.character}"
#puts "#{role14.movieid} #{role14.personid} #{role14.character}"
#puts "#{role15.movieid} #{role15.personid} #{role15.character}"