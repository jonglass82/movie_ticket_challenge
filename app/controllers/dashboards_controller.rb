class DashboardsController < ApplicationController

  def index
    @movies = Movie.all
    @showtimes = Showtime.all
    @auditoriums = Auditorium.all
    @purchases = Purchase.order(id: :desc)
  end

end
