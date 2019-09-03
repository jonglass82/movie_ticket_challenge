class MovieListingsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
  end

  def new_purchase

  end

end
