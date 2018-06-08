class ChangeTimeToText < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :time, :text
  end
end
