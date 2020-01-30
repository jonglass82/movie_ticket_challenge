class Showtime < ApplicationRecord

  belongs_to :movie, :auditorium
  has_many :tickets

end
