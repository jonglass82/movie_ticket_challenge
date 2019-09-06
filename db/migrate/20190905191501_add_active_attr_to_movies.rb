class AddActiveAttrToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :active, :boolean, default: true
  end
end
