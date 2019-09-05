class DashboardsController < ApplicationController

  def index
    @auditoriums = Auditorium.all
    @ticket_sales = Purchase.all
  end

end
