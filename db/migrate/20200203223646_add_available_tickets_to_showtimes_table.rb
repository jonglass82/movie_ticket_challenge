class AddAvailableTicketsToShowtimesTable < ActiveRecord::Migration[5.2]
  def change
    add_column :showtimes, :available_tickets, :integer
  end
end
