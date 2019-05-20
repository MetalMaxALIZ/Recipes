class CreateHeroTable < ActiveRecord::Migration[5.2]
  def change
    create_table :hero do |t|
      t.string :name
      t.integer :rarity
      t.string :type
      t.string :image
    end
  end
end
