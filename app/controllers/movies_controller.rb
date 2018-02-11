class MoviesController < ApplicationController
  def index
    @movie = Movie.generate rand(2200000) 
    @movies = Movie.all
  end

  def new
  end

  def show
  end

  def edit
  end
end
