class Player < ApplicationRecord
  has_many :events
  belongs_to :user
  validates :nickname, presence: true, uniqueness: true
  validates :category, presence: true, inclusion: { in: %w(Video-Games Card-Games Board-Games Role-Playing-Games), message: "%{value} is not a valid category"}
end
