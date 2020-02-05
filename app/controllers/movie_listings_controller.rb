class MovieListingsController < ApplicationController

  def index
    @movies = Movie.all
    @showtimes = Showtime.order(:time)
  end

  def show
    @movie = Movie.find_by_id(params[:id])
  end

end
