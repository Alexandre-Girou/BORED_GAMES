class Player < ApplicationRecord
  has_many :events
  validates :nickname, presence: true, uniqueness: true
end
