class Note < ApplicationRecord
  belongs_to :exhibitor
  belongs_to :user

  has_rich_text :content

  scope :written_by, ->(a_user) { where(user: a_user) }
  scope :for_exhibitor, ->(a_exhibitor) { where(exhibitor: a_exhibitor) }
end
