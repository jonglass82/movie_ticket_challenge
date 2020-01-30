class AddColumnsToMovieTable < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :length, :string
    add_column :movies, :image_url, :string
    add_column :movies, :rating, :string
    add_column :movies, :run_time, :string
    add_column :movies, :genre, :string
    add_column :movies, :director, :string
    add_column :movies, :actors, :string
    add_column :movies, :plot, :string
    add_column :movies, :production, :string
  end
end
