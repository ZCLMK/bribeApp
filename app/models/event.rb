class Event < ApplicationRecord
    belongs_to :creator, class_name: "User", foreign_key: "creator_id"
    belongs_to :category, foreign_key:"category_id", optional: true
    
    has_and_belongs_to_many :attendees, class_name: "User"
  
	validates :title, :description, :date, :address, presence: true
	validates :title, uniqueness: true
	validates :image, presence: false #Pour seed
	mount_uploader :image, ImageUploader

end