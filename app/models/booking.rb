class Booking < ApplicationRecord
  belongs_to :tent
  belongs_to :user
end
