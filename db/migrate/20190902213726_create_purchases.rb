class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.integer :ticket_id
      t.string :customer_name
      t.string :customer_email
      t.string :cc_number
      t.date :cc_exp

      t.timestamps
    end
  end
end
