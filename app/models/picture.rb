class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :exhibitor
  mount_uploader :pic, PhotoUploader

  scope :taken_by, ->(a_user) { where(user: a_user) }
  scope :for_exhibitor, ->(a_exhibitor) { where(exhibitor: a_exhibitor) }
end
