class RenameChefs < ActiveRecord::Migration[5.2]
  def change
    rename_table :chefs, :users
  end
end
