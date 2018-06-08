class CreateJoinTable < ActiveRecord::Migration[5.2]
  def change
    create_join_table :user,  :events do |t|
       t.index :user_id 
       t.index :event_id
    end
  end
end
