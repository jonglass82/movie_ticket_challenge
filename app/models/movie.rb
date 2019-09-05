class Movie < ApplicationRecord

  has_many :tickets
  belongs_to :auditorium

  validates :title, presence: true
  validates :show_time, presence: true
  validates :auditorium_id, presence: true

end
