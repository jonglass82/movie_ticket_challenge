class AddAvailableTicketsToMovie < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :available_tickets, :integer
  end
end
