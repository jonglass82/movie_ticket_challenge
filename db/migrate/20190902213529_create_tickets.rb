class CreateTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :tickets do |t|
      t.integer :movie_id
      t.integer :max

      t.timestamps
    end
  end
end
