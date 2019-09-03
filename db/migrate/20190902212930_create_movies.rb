class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :show_time
      t.integer :auditorium_id

      t.timestamps
    end
  end
end
