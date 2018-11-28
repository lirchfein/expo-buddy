class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :exhibitor
  mount_uploader :pic, PhotoUploader
end
