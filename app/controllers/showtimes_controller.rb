class ShowtimesController < ApplicationController

  def index
    @showtimes = Showtime.all
  end

  def new
    @movies = Movie.all
    @auditoriums = Auditorium.all
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

  def edit
    @showtime = Showtime.find_by_id(params[:id])
    @movies = Movie.all
    @auditoriums = Auditorium.all
  end

  def update

    @showtime = Showtime.find_by_id(params[:id])

    @showtime.movie_id = params[:movie_id] || @showtime.movie_id
    @showtime.auditorium_id = params[:auditorium_id] || @showtime.auditorium_id
    @showtime.time = params[:time] || @showtime.time
    @showtime.date = params[:date] || @showtime.date
    @showtime.available_tickets = params[:available_tickets] || @showtime.available_tickets
    
    

    if @showtime.save
      redirect_to "/admin_dashboard"
    else
      @errors = @showtime.errors.full_messages
      render "edit.html.erb"
    end
    
  end

end