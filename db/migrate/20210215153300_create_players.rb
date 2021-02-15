class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :category
      t.integer :id_users, foreign_key: true
      t.timestamps
    end
  end
end
