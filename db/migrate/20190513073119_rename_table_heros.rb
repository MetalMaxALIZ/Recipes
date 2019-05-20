class RenameTableHeros < ActiveRecord::Migration[5.2]
   def change
     rename_table :hero, :heros
   end
end
