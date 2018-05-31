class RemoveEventIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :event_id, :integer
  end
end
