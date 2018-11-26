class Bookmark < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :expo, dependent: :destroy
end
