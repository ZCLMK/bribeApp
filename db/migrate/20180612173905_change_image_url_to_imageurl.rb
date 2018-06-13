class ChangeImageUrlToImageurl < ActiveRecord::Migration[5.2]
	def change
		rename_column :events, :image_url, :imageurl
	  end
end
