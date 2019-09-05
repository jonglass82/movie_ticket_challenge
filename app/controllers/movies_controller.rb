class MoviesController < ApplicationController

  def new
    @errors = []
  end

  def create

      @movie = Movie.new(
        title: params[:title],
        show_time: params[:show_time],
        auditorium_id: params[:auditorium_id]
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
    
    if @movie.save
      redirect_to "/admin_dashboard"
    else
      @errors = @auditorium.errors.full_messages
      render "edit.html.erb"
    end
    
  end

end
