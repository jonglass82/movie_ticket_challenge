class RemoveLengthFromMovieTable < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :length, :string
  end
end
