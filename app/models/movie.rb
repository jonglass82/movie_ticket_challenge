class Movie < ApplicationRecord

  has_many :tickets
  belongs_to :auditorium

end
