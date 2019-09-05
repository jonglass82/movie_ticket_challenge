class Auditorium < ApplicationRecord

  has_many :movies
  validates :space_name, presence: true
  validates :capacity, presence: true

end
