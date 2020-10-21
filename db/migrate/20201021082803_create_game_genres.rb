class CreateGameGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :game_genres do |t|
      t.integer :user_id, null: false
      t.integer :game_id, null: false
      t.timestamps
    end
  end
end
