class MovieListingsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
  end

  def new_purchase
    @movie = Movie.find_by(id: params[:id])
  end

end
