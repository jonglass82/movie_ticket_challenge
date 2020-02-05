class PurchaseConfirmationMailer < ApplicationMailer

    layout "mailer"

    def purchase_confirmation_email(purchase)
      @purchase = purchase
      @movie_title = Ticket.find_by_id(@purchase.ticket_id).showtime.movie.title
      @movie_time = Ticket.find_by_id(@purchase.ticket_id).showtime.time
      @movie_location = Ticket.find_by_id(@purchase.ticket_id).showtime.auditorium.space_name

      mail(to: @purchase.customer_email, subject: 'Glassman Theaters Purchase Confirmation')
    end

end
