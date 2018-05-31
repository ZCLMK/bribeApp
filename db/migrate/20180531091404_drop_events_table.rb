class DropEventsTable < ActiveRecord::Migration[5.2]
  def change
   
  end
  def up
    drop_table :events
  end
  def down 
    create_table :events
  end 
end
