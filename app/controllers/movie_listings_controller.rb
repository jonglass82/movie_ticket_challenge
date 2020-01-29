class MovieListingsController < ApplicationController

  def index
    @auditoriums = Auditorium.order(space_name: :asc)
    @movies = Movie.all
    @movie = Movie.find_by(id: params[:id])
  end

end
