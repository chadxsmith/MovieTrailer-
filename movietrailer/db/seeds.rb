# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

movie = Movie.create(title:'X', year:2012, plot:"A Love Story", poster_url:"http://ia.media-imdb.com/images/M/MV5BMTUyMTE0ODcxNF5BMl5BanBnXkFtZTgwODE4NDQzNTE@._V1_SY298_CR2,0,201,298_AL_.jpg")
movie.trailers.create(title:'X', embedded_url:"Test Embedded")
movie.actors.create(name:'John Doe', photo_url:"http://ia.media-imdb.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_SX214_CR0,0,214,317_AL_.jpg")
