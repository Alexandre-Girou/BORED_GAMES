class ReplaceUserIdWithUserReferencesForPlayers < ActiveRecord::Migration[6.0]
  def change
    remove_column :players, :id_users
    add_reference :players, :user, foreign_key: true
  end
end
