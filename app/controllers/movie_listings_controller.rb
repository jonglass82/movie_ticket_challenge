class MovieListingsController < ApplicationController

  def index
    @auditoriums = Auditorium.order(space_name: :asc)
    @movie = Movie.find_by(id: params[:id])
  end

end
