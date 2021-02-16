class CreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :events do |t|
      t.string :title
      t.integer :slots
      t.text :descritption
      t.string :status
      t.datetime :start_date
      t.datetime :finish_date
      t.integer :rating_user
      t.integer :rating_player
      t.references :player, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
