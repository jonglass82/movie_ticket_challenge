class AddCapacityColumnToAuditorium < ActiveRecord::Migration[5.2]
  def change
    add_column :auditoria, :capacity, :integer
  end
end
