class CreateGamemode < ActiveRecord::Migration[5.2]
  def change
    create_table :gamemodes do |t|
      t.string :name
      t.integer :level
      t.string :image
    end
  end
end
