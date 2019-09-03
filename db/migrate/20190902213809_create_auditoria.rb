class CreateAuditoria < ActiveRecord::Migration[5.2]
  def change
    create_table :auditoria do |t|
      t.string :space_name

      t.timestamps
    end
  end
end
