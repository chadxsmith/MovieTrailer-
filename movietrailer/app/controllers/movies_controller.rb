class  MoviesController < ApplicationController

  skip_before_action :verify_authenticity_token

  def index
      @movies = Movie.all
      @test_title = HTTParty.get("http://www.omdbapi.com/?t=groundhog&y=&plot=short&r=json").parsed_response["Title"]
    end

    def show
      @movie = Movie.find( params[:id] )
      @actors = @movie.actors.all
    end

    def new
    @movie = Movie.new
    end

  def create
        @api_title = params["api_title"]
        @api_call = HTTParty.get("http://www.omdbapi.com/?t=#{@api_title}&y=&plot=short&r=json")
        @title = @api_call["Title"]
        @year = @api_call["Year"]
        @poster_url = @api_call["Poster"]
        @plot = @api_call["Plot"]
        @actors = @api_call["Actors"]
        @movie = Movie.new( title: @title, year: @year, plot: @plot, poster_url: @poster_url )
        @movie.actors.new( name: @actors, photo_url: "http://ia.media-imdb.com/images/M/MV5BMjA1MjE2MTQ2MV5BMl5BanBnXkFtZTcwMjE5MDY0Nw@@._V1_SX214_CR0,0,214,317_AL_.jpg" )
        if @movie.save
      redirect_to @movie
    else
      render :new
    end
  end

end
