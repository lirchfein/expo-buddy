class Exhibitor < ApplicationRecord
  belongs_to :expo
  has_many :favorites, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :users, through: :favorites
end
