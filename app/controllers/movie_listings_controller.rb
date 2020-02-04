class MovieListingsController < ApplicationController

  def index
    @movies = Movie.all
  end

end
