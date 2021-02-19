class AddSexToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :gender, :string
  end
end
