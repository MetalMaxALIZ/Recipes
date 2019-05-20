class RenameColumnUsers < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :chefname, :username
  end
end
