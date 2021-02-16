class AddPriceToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :price, :integer
  end
end
