class PurchasesController < ApplicationController

  def create

    @purchase = Purchase.new(
      ticket_id: "",
      customer_name: params[:name],
      customer_email: params[:email],
      cc_number: params[:cc_number],
      cc_exp: params[:cc_exp]
      )

    if @purchase.save

      @ticket = Ticket.create(
        movie_id: @movie
      )

      @purchase.update(ticket_id: @ticket.id)

    else
      @errors = @purchase.errors.full_messages
      render "new_purchase.html.erb"
    end

  end

end
