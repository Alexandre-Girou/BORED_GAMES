class Event < ApplicationRecord
  belongs_to :player
  belongs_to :user
  # before_validation :update_status
  # def update_status
  #   self.status ||= "pending"
  ##   self.status = self.status || "pending"
  # end
end
