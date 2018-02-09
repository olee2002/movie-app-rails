# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all

Movie.create(title: 'test', genre:'education', year:2018, synopsis:'zz',picture:'http://img01.thedrum.com/styles/home_page_featured/s3/suply-and-demand-movie-theater-seats.jpg.jpg?itok=Gg6A3jLW',add_to_fav:true)

User.create(movie_id: 1, username: 'DiDi', firstname: 'Pop', lastname:'Tart', email:'poptart@gmail.com')