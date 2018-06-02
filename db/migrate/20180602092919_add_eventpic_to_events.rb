class AddEventpicToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :eventpic, :string
  end
end
