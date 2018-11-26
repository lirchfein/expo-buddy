class Exhibitor < ApplicationRecord
  belongs_to :expo, dependent: :destroy
  has_many :users, through: :favorites
end
