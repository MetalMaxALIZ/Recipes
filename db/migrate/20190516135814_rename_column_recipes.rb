class RenameColumnRecipes < ActiveRecord::Migration[5.2]
  def change
    rename_column :recipes, :chef_id, :user_id

  end
end
