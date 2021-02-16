class AddTotalPriceToEvents < ActiveRecord::Migration[6.0]
  def change
    add_column :events, :total_price, :integer
  end
end
