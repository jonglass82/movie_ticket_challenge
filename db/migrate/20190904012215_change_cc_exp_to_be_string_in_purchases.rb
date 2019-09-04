class ChangeCcExpToBeStringInPurchases < ActiveRecord::Migration[5.2]
  def change
    change_column :purchases, :cc_exp, :string
  end
end
