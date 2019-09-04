class DashboardsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
    @ticket_sales = Purchase.all
  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end


end
