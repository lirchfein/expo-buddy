class ExhibitorsController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[index show]
  def index
    @expo = Expo.find(params[:expo_id])
    if params[:query].present?
      @exhibitors = @expo.exhibitors.search_by_name_and_description(params[:query])
    else
      @exhibitors = @expo.exhibitors
    end
  end

  def show
    @exhibitor = Exhibitor.find(params[:id])
    @expo = Expo.find(params[:expo_id])
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
end
