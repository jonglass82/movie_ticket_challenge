class Showtime < ApplicationRecord

  belongs_to :movie 
  belongs_to :auditorium
  has_many :tickets

  validates :date, presence: true

end