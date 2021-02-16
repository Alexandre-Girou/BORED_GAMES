class Player < ApplicationRecord
  has_many :events
  belongs_to :user
  validates :nickname, presence: true, uniqueness: true
end
