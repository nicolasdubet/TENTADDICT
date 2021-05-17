class Tent < ApplicationRecord
  validates :name, presence: true
  validates :number_of_couch, presence: true, inclusion: 1..10
  validates :season, presence: true, inclusion: { in: %w(spring/summer fall/winter 4seasons), message: "%{value} is not a season" }
  validates :weight, presence: true, inclusion: 1..7
end
