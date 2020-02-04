class ShowtimesController < ApplicationController

  def index
    @showtimes = Showtime.all
  end

  def new
    @movies = Movie.all
    @auditoriums = Auditorium.all
    @errors = []
  end

  def create

    @showtime = Showtime.new(
      movie_id: params[:movie_id],
      auditorium_id: params[:auditorium_id],
      time: params[:time],
      date: params[:date],
      available_tickets: params[:available_tickets],
    )

    if @showtime.save
      redirect_to "/admin_dashboard"
    else
      @movies = Movie.all
      @auditoriums = Auditorium.all
      @errors = @showtime.errors.full_messages
      render "new.html.erb"
    end

  end

end
