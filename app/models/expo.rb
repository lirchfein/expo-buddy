class Expo < ApplicationRecord
  has_many :bookmarks
  has_many :users, through: :bookmarks
  has_many :exhibitors
end
