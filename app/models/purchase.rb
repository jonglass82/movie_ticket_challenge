class ExpirationDateValidation < ActiveModel::Validator
  def validate(record)
    unless Date.parse(record.cc_exp) > Date.today
      record.errors.add :cc_exp, "must be a valid date"
    end
  end
end

class Purchase < ApplicationRecord

  validates :customer_name, presence: true
  validates :customer_email, presence: true, format: {with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :cc_number, presence: true
  validates :cc_exp, presence: true
  validates_with ExpirationDateValidation

end

