class PurchasesController < ApplicationController


  def new_purchase
    @movie = Movie.find_by(id: params[:id])
    @auditorium = @movie.auditorium.space_name
    @errors = []
  end

  def create

    @purchase = Purchase.new(
      ticket_id: "",
      customer_name: params[:customer_name],
      customer_email: params[:customer_email],
      cc_number: params[:cc_number],
      cc_exp: params[:cc_exp]
      )

    if @purchase.save

      @movie = Movie.find_by(id: params[:movie_id])
      @location = @movie.auditorium.space_name

      @ticket = Ticket.create(
        movie_id: params[:movie_id]
      )

      @purchase.update(ticket_id: @ticket.id)
      @movie.decrement!(:available_tickets)

      PurchaseConfirmationMailer.purchase_confirmation_email(@purchase).deliver_now

      render "purchase_confirmation.html.erb"

    else
      @movie = Movie.find_by(id: params[:movie_id])
      @errors = @purchase.errors.full_messages
      render "new_purchase.html.erb"
    end

  end

end
