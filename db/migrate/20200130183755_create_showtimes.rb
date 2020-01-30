class CreateShowtimes < ActiveRecord::Migration[5.2]
  def change
    create_table :showtimes do |t|
      t.integer :movie_id
      t.integer :auditorium_id
      t.string :time
      t.string :date

      t.timestamps
    end
  end
end
