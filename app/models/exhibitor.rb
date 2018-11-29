class Exhibitor < ApplicationRecord
  belongs_to :expo
  has_many :favorites, dependent: :destroy
  has_many :pictures, dependent: :destroy
  has_many :users, through: :favorites

  include PgSearch
  pg_search_scope :search_by_name_and_description, against: {
    :name => 'A',
    :description => 'B'
  },
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }
end
