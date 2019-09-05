class PurchaseConfirmationMailer < ApplicationMailer

    layout "mailer"

    def purchase_confirmation_email(user)
      @user = user
      @movie_title = Ticket.find_by_id(@user.ticket_id).movie.title
      @movie_time = Ticket.find_by_id(@user.ticket_id).movie.show_time
      @movie_location = Ticket.find_by_id(@user.ticket_id).movie.auditorium

      mail(to: @user.customer_email, subject: 'Glassman Theaters Purchase Confirmation')
    end

end
