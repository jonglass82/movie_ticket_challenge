class MoviesController < ApplicationController

  def new
    @auditoriums = Auditorium.all
    @errors = []
  end

  def create

      @auditoriums = Auditorium.all
      @selected_auditorium = Auditorium.where(space_name:params[:space_name]).first.id
      @selected_auditorium_capacity = Auditorium.where(space_name:params[:space_name]).first.capacity

      @movie = Movie.new(
        title: params[:title],
        show_time: params[:show_time],
        auditorium_id: @selected_auditorium,
        available_tickets: @selected_auditorium_capacity
      )

    if @movie.save
      redirect_to "/admin_dashboard"
    else
      @errors = @movie.errors.full_messages
      render "new.html.erb"
    end

  end

  def edit
    @movie = Movie.find_by_id(params["id"])
  end

  def update

    @movie = Movie.find_by_id(params["id"])
    @movie.title = params["title"] || @movie.title
    @movie.show_time = params["show_time"] || @movie.show_time
    @movie.auditorium = params["auditorium_id"] || @movie.auditorium
    @movie.available_tickets = params["available_tickets"] || @movie.available_tickets
    @movie.active = params["active"] || @movie.active
    
    if @movie.save
      redirect_to "/admin_dashboard"
    else
      @errors = @auditorium.errors.full_messages
      render "edit.html.erb"
    end
    
  end

end
