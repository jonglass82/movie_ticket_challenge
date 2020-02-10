class Purchase < ApplicationRecord

  belongs_to :ticket

  validates :customer_name, presence: true
  validates :customer_email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :cc_number, presence: true
  validates :cc_exp, presence: true

end

