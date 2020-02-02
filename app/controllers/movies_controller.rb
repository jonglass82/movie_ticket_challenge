class MoviesController < ApplicationController

  require 'net/http'

  def new
    @auditoriums = Auditorium.all
    @errors = []
  end

  def create

    url = "http://www.omdbapi.com/?i=#{params[:imdbID]}&apikey=#{ENV['MOVIE_API_KEY']}"
    uri = URI(url)
    data = Net::HTTP.get(uri)
    @selected_movie = JSON.parse(data)

      @movie = Movie.new(
        title: @selected_movie["Title"],
        image_url: @selected_movie["Poster"],
        rating: @selected_movie["Rated"],
        run_time: @selected_movie["Runtime"],
        genre: @selected_movie["Genre"],
        director: @selected_movie["Director"],
        actors: @selected_movie["Actors"],
        plot: @selected_movie["Plot"],
        production: @selected_movie["Production"]
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

  def search 
    url = "http://www.omdbapi.com/?s=#{params[:search]}&apikey=#{ENV['MOVIE_API_KEY']}"
    uri = URI(url)
    data = Net::HTTP.get(uri)
    @movies = JSON.parse(data)
    render "new.html.erb"
  end

  def preview
    url = "http://www.omdbapi.com/?i=#{params[:id]}&apikey=#{ENV['MOVIE_API_KEY']}"
    uri = URI(url)
    data = Net::HTTP.get(uri)
    @selected_movie = JSON.parse(data)
    render "preview.html.erb"
  end

end
