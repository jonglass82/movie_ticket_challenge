class DashboardsController < ApplicationController

  def index
    @movies = Movie.all
    @showtimes = Showtime.all
    @auditoriums = Auditorium.all
    @ticket_sales = Purchase.all
  end

end
