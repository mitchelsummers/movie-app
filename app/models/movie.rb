class Movie < ApplicationRecord
  validates :title, presence: true
  validates :plot, length: { maximum: 500 }
  has_many :actors
end
