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

movie1 = Movie.new
movie1.title = "Batman Begins"
movie1.year_released = "2005"
movie1.rated = "PG-13"
movie1.person_id =  "Christopher Nolan"
movie1.save

movie2 = Movie.new
movie2.title = "The Dark Knight"
movie2.year_released= "2008"
movie2.rated = "PG-13"
movie2.person_id =  "Christopher Nolan"
movie2.save

movie3 = Movie.new
movie3.title = "The Dark Knight Rises"
movie3.year_released = "2012"
movie3.rated = "PG-13"
movie3.person_id =  "Christopher Nolan"
movie3.save

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


role1 = Role.new
role1.movieid = "Batman Begins"
role1.personid =  "Christian Bale"
role1.character = "Bruce Wayne"
role1.save

role2 = Role.new
role2.movieid = "Batman Begins"
role2.personid =  "Michael Caine"
role2.character = "Alfred"
role2.save

role3 = Role.new
role3.movieid = "Batman Begins"
role3.personid =  "Liam Neeson"
role3.character = "Ra's Al Ghul"
role3.save

role4 = Role.new
role4.movieid = "Batman Begins"
role4.personid =  "Katie Holmes"
role4.character = "Rachel Dawes"
role4.save

role5 = Role.new
role5.movieid = "Batman Begins"
role5.personid =  "Gary Oldman"
role5.character = "Commissioner Gordon"
role5.save

role6 = Role.new
role6.movieid = "The Dark Knight"
role6.personid =  "Christopher Nolan"
role6.character = "Bruce Wayne"
role6.save

role7 = Role.new
role7.movieid = "The Dark Knight"
role7.personid =  "Heath Ledger"
role7.character = "Joker"
role7.save

role8 = Role.new
role8.movieid = "The Dark Knight"
role8.personid = "Aaron Eckhart"
role8.character = "Harvey Dent"
role8.save

role9 = Role.new
role9.movieid = "The Dark Knight"
role9.personid = "Michael Caine"
role9.character = "Alfred"
role9.save

role10 = Role.new
role10.movieid = "The Dark Knight"
role10.personid = "Maggie Gyllenhaal"
role10.character = "Rachel Dawes"
role10.save

role11 = Role.new
role11.movieid = "The Dark Knight Rises"
role11.personid = "Christopher Nolan"
role11.character = "Bruce Wayne"
role11.save

role12 = Role.new
role12.movieid = "The Dark Knight Rises"
role12.personid = "Gary Oldman"
role12.character = "Commissioner Gordon"
role12.save

role13 = Role.new
role13.movieid = "The Dark Knight Rises"
role13.personid = "Tom Hardy"
role13.character = "Bane"
role13.save

role14 = Role.new
role14.movieid = "The Dark Knight Rises"
role14.personid = "Joseph Gordon-Levitt"
role14.character = "John Blake"
role14.save

role15 = Role.new
role15.movieid = "The Dark Knight Rises"
role15.personid = "Anne Hathaway"
role15.character = "Selina Kyle"
role15.save


# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output
# TODO!

puts "#{movie1.title} #{movie1.year_released} #{movie1.rated} #{movie1.person_id}"
puts "#{movie2.title} #{movie2.year_released} #{movie2.rated} #{movie2.person_id}"
puts "#{movie3.title} #{movie3.year_released} #{movie3.rated} #{movie3.person_id}"


# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie
# TODO!

puts "#{role1.movieid} #{role1.personid} #{role1.character}"
puts "#{role2.movieid} #{role2.personid} #{role2.character}"
puts "#{role3.movieid} #{role3.personid} #{role3.character}"
puts "#{role4.movieid} #{role4.personid} #{role4.character}"
puts "#{role5.movieid} #{role5.personid} #{role5.character}"
puts "#{role6.movieid} #{role6.personid} #{role6.character}"
puts "#{role7.movieid} #{role7.personid} #{role7.character}"
puts "#{role8.movieid} #{role8.personid} #{role8.character}"
puts "#{role9.movieid} #{role9.personid} #{role9.character}"
puts "#{role10.movieid} #{role10.personid} #{role10.character}"
puts "#{role11.movieid} #{role11.personid} #{role11.character}"
puts "#{role12.movieid} #{role12.personid} #{role12.character}"
puts "#{role13.movieid} #{role13.personid} #{role13.character}"
puts "#{role14.movieid} #{role14.personid} #{role14.character}"
puts "#{role15.movieid} #{role15.personid} #{role15.character}"