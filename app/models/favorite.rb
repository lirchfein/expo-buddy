class Favorite < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :exhibitor, dependent: :destroy
end
