class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.integer :user_id, null: false
      t.string :title, null: false
      t.text :introduction, null: false
      t.string :image, null: false
      t.timestamps
    end
  end
end
