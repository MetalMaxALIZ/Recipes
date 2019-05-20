class CreateRating < ActiveRecord::Migration[5.2]
  def change
    create_table :stars do |t|
      t.integer :recipe_id
      t.integer :rating
    end
  end
end
