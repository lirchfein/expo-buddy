class Expo < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks
  has_many :exhibitors, dependent: :destroy
end
