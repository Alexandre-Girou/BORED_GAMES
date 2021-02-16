class RemoveSlotRatingsToEvents < ActiveRecord::Migration[6.0]
  def change
    remove_column :events, :slots
    remove_column :events, :rating_user
    remove_column :events, :rating_player
  end
end
