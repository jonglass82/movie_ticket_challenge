class AuditoriumsController < ApplicationController

  def new
    @errors = []
  end

  def create

    @auditorium = Auditorium.new(
      space_name: params[:space_name],
      capacity: params[:capacity]
      )

    if @auditorium.save
      redirect_to "/admin_dashboard"
    else
      @errors = @auditorium.errors.full_messages
      render "new.html.erb"
    end

  end

  def edit
    @auditorium = Auditorium.find_by_id(params["id"])
    @errors = []
  end

  def update

    @auditorium = Auditorium.find_by_id(params["id"])
    @auditorium.space_name = params[:space_name] || @auditorium.space_name
    @auditorium.capacity = params[:capacity] || @auditorium.capacity
    
    if @auditorium.save
      redirect_to "/admin_dashboard"
    else
      @errors = @auditorium.errors.full_messages
      render "edit.html.erb"
    end
    
  end


end
