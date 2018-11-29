class ExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @exhibitors = Exhibitor.all
    @expo = Expo.find(params[:expo_id])
  end

  def show
    @exhibitor = Exhibitor.find(params[:id])
    @expo = Expo.find(params[:expo_id])
    @picture = Picture.new
    @pictures = Picture.all
  end

  def favorite
    @exhibitor = Exhibitor.find(params[:id])
    @favorite = current_user.favorites.find_by(exhibitor_id: @exhibitor.id)


    if @favorite
      @favorite.destroy
    else
      Favorite.create(exhibitor_id: params[:id], user_id: current_user.id)
    end
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
      format.js # <-- will render `app/views/exhibitors/favorite.js.erb`
    end
  end

  def favorites_tab
    respond_to do |format|
      format.html { redirect_to expo_exhibitors_path(@exhibitor.expo) }
      format.js # <-- will render `app/views/exhibitors/favorites_tab.js.erb`
    end
  end
end
