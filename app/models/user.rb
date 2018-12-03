class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  mount_uploader :avatar, PhotoUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :bookmarks, dependent: :destroy

  has_many :favorites, dependent: :destroy

  has_many :pictures, dependent: :destroy
  has_many :notes, dependent: :destroy

  has_many :expos, through: :bookmarks
  has_many :exhibitors, through: :favorites
end
