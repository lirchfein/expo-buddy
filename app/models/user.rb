class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  after_create :set_default_avatar

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks, dependent: :destroy

  has_many :favorites, dependent: :destroy

  has_many :pictures, dependent: :destroy
  has_many :notes, dependent: :destroy

  has_many :expos, through: :bookmarks
  has_many :exhibitors, through: :favorites

  def set_default_avatar
    if avatar.file.nil?
      self.remote_avatar_url = "https://res.cloudinary.com/dfcud6por/image/upload/v1544110766/expo-buddy/buttons/placeholder_avatar.png"
    end
    self.save
  end
end
