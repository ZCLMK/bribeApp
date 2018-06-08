class ChangeCategoryIdType < ActiveRecord::Migration[5.2]
  def up
    change_column :events, :category_id, :string
  end

  def down
    change_column :events, :category_id, :integer
  end
end
