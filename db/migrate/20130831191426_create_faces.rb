class CreateFaces < ActiveRecord::Migration

 def change

   create_table :faces do |t|

     t.string :name, :null => false

     t.string :image, :null => false

     t.float :elo_rating , :default => 1600

     t.integer :won, :default => 0

     t.integer :lost, :default =>0

     t.timestamps

   end

 end

end
