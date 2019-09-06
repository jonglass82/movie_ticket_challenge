class RemoveMaxFromTicket < ActiveRecord::Migration[5.2]
  def change
    remove_column :tickets, :max, :integer
  end
end
