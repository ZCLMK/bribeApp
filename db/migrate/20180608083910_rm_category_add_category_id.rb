class RmCategoryAddCategoryId < ActiveRecord::Migration[5.2]
  def change
    rename_column :events, :category, :category_id
  end
end
