class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion:  { in: %w(male female other),
  message: "%{value} is not a gender" }
end
