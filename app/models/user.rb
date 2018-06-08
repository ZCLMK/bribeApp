class User < ApplicationRecord
  

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  attr_accessor :login
 has_many :created_events, class_name: "Event", foreign_key: "creator_id"
 has_and_belongs_to_many :attended_evts, class_name:"Event"
                          
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  validates :username, presence: true, uniqueness: {case_insensitive: false}, format: {with: /\A[a-zA-Z0-9_\.]*\z/}

  def self.find_first_by_auth_conditions(warden_conditions)
    conditions = warden_conditions.dup
    if login = conditions.delete(:login) 
      where(conditions.to_hash).where("lower(username) = :value OR lower(email) = :value", value: login.downcase).first
    else 
      where(conditions.to_hash)
    end
  end
  
  
  # ======== AVATAR UPLOAD =========
  
  mount_uploader :avatar, AvatarUploader
   # User Avatar Validation
  validates_integrity_of  :avatar
  validates_processing_of :avatar
 
  private
    def avatar_size_validation
      errors[:avatar] << "should be less than 500KB" if avatar.size > 0.5.megabytes
    end
    
  #==================================
end
