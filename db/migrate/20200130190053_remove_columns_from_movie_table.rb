class RemoveColumnsFromMovieTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :show_time, :string
    remove_column :movies, :auditorium_id, :integer
    remove_column :movies, :available_tickets, :integer
  end
end
