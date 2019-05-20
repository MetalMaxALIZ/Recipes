class AddNewColumnAndEditType < ActiveRecord::Migration[5.2]
  def change
    add_column :heros, :element, :string
    rename_column :heros, :type, :role
  end
end
