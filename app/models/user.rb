class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :bookings, dependent: :destroy
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :pseudo, presence: true, uniqueness: true
  validates :gender, presence: true, inclusion:  { in: %w(male female other),
  message: "%{value} is not a gender" }

  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable
end
