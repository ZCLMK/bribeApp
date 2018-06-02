class RemoveEventpicFromEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :eventpic, :string
  end
end
