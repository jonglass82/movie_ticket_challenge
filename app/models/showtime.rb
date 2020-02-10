class Showtime < ApplicationRecord

  belongs_to :movie 
  belongs_to :auditorium
  has_many :tickets

  validates :date, :movie_id, :time, :auditorium_id, :available_tickets, presence: true
  validates_with SalesLimit 

end
