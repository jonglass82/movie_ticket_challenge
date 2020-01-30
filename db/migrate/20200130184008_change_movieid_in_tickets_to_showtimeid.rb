class ChangeMovieidInTicketsToShowtimeid < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :movie_id, :integer
    add_column :tickets, :showtime_id, :integer
  end
end
