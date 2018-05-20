class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  acts_as_commontator
  acts_as_voter
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
 enum gender: {male: 0, female: 1}
 mount_uploader :avatar, AvatarUploader     
 has_and_belongs_to_many :lectures, dependent: :destroy
 has_many :courses, dependent: :destroy    
end
