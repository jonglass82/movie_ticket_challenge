class Purchase < ApplicationRecord

  validates :customer_name, presence: true
  validates :customer_email, presence: true
  validates :cc_number, presence: true
  validates :cc_exp, presence: true
  
end

