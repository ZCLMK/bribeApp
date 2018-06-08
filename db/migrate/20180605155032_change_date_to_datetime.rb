class ChangeDateToDatetime < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :date, :datetime
  end
end
