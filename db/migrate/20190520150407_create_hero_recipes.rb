class CreateHeroRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :hero_recipes do |t|
      t.integer :hero_id
      t.integer :recipe_id
      t.timestamps
    end
  end
end
