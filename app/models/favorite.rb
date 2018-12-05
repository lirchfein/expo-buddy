class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :exhibitor

  def self.get_expo(user, expo)
    array = []
    user.favorites.each do |favorite|
      array << favorite.exhibitor if favorite.exhibitor.expo == expo
    end
    array
  end

  def self.visited_exhibitors(user, exhibitors)
    array2 = []
    exhibitors.each do |exhibitor|
      fav = user.favorites.find_by(exhibitor_id: exhibitor.id)
      array2 << exhibitor if fav.visited
    end
    array2
  end
end
