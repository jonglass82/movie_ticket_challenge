class MovieListingsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
    @movie = Movie.find_by(id: params[:id])
    @purchased_tickets = ""
  end

end
